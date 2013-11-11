ActiveMetrics::ReportFile.define "User Retention" do
  define_metric :user_registered do
    puts "dsl define metrics called"
  end

  cohort_table 'Retention Matrix' do
    puts "dsl cohort table called"
    display [:user_registered]
  end
end
