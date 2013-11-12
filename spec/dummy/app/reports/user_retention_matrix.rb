ActiveMetrics::ReportFile.define "User Rention Matrix" do
  define_segment :registration_week do
    (0..7).map do |n|
      n.weeks.ago.beginning_of_week
    end.sort
  end

  define_metric :users_registered do |current_segment|
    User.where("created_at BETWEEN ? AND ?", current_segment, current_segment.end_of_week).to_a
  end

  define_metric :users_active_after_n_week do |current_segment|
    users = ActiveMetrics::Metrics.get(:users_registered, current_segment)

    (0..4).map do |n|
      Todo.where(user_id: users.map(&:id))
          .where("created_at BETWEEN ? AND ?",
                  current_segment + n.weeks,
                  current_segment.end_of_week + (n).weeks)
          .map(&:user_id).uniq
    end
  end

  cohort_table 'Retention Matrix' do
    display      [:users_registered, :users_active_after_n_week]
    segment_by   :registration_week
    # based_on     :user
    # aggregate_by :company
  end
end
