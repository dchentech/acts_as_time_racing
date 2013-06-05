Acts As Time Racing
===========================
Record one item's start and finish time

## Usage
1.  Add started_at and finished_at datetime column to the table.
2.  Now here you go.
```ruby
class LearnIssue < ActiveRecord::Base
  include ActsAsTimeRacing
end
```
```text
1.9.3-p392 :001 > issue = LearnIssue.find(7)
  LearnIssue Load (0.5ms)  SELECT `learn_issue`.* FROM `learn_issue` WHERE `learn_issue`.`id` = 7 AND (`learn_issue`.`is_delete` = 0) LIMIT 1
 => #<LearnIssue id: 7, started_at: "2013-05-14 04:54:41", finished_at: nil, > 
1.9.3-p392 :002 > issue.started_at
 => Tue, 14 May 2013 12:54:41 CST +08:00 
1.9.3-p392 :003 > issue.started?
 => true 
1.9.3-p392 :004 > issue.finished_at
 => nil 
1.9.3-p392 :005 > issue.finished?
 => false 
```
