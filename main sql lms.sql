CREATE table linkedin_users(
id INT NOT NULL ,
  first_name VARCHAR(10) NOT NULL,
  last_name VARCHAR(10) NOT NULL,
  email VARCHAR(25) NOT NULL,
  headline VARCHAR(25) NOT NULL,
  industry VARCHAR(15) NOT NULL,
  location VARCHAR(15) NOT NULL,
  connections INT NOT NULL,
  primary key (id)
);
insert into linkedin_users (id, first_name, last_name, email, headline, industry, location, connections )
 values(1, 'John', 'Doe', 'john.doe@example.com', 'Software Engineer', 'Technology', 'USA', 500),
(2, 'Jane', 'Doe', 'jane.doe@example.com', 'Data Scientist', 'Technology', 'New York', 1000),
(3, 'Mark', 'Zuckerberg', 'mark.z@facebook.com', 'CEO', 'Technology', 'USA', 30000),
(4, 'Jeff', 'Bezos', 'jeff.bezos@amazon.com', 'CEO', 'Technology', 'USA', 50000),
(5, 'Tim', 'Cook', 'tim.cook@apple.com', 'CEO', 'Technology', 'USA', 20000),
(6, 'Sachin', 'Bansal', 'sachin@flipkart.com', 'CEO', 'Technology', 'Bangalore,India', 10000),
(7, 'Amit', 'Agarwal', 'amit.agarwal@amazon.in', 'CEO', 'Technology', 'Bangalore,India', 5000),
(8, 'Vijay', 'Sharma', 'vijay.sharma@paytm.com', 'CEO', 'Technology', 'Noida,India', 3000),
(9, 'Byju', 'Raveendran', 'byju.raveendran@byjus.com', 'CEO', 'Technology', 'Bangalore,India', 2000),
(10, 'Ritesh', 'Agarwal', 'ritesh@oyorooms.com', 'CEO', 'Technology', 'Gurgaon,India', 1000);
select * from linkedin_users;
insert into linkedin_users (id, first_name, last_name, email, headline, industry, location, connections )
values (11, 'Ma', 'Huateng', 'huateng.ma@tencent.com', 'CEO', 'Technology', 'China', 30000),
(12, 'Jack', 'Ma', 'jack.ma@alibaba.com', 'CEO', 'Technology', 'hina', 20000),
(13, 'Zhang', 'Yiming', 'yiming@bytedance.com', 'CEO', 'Technology', 'China', 10000),
(14, 'Wang', 'Xing', 'xing.wang@meituan.com', 'CEO', 'Technology', 'China', 5000),
(15, 'Liu', 'Qiangdong', 'qiangdong.liu@jd.com', 'CEO', 'Technology', 'China', 3000),
(16, 'Lee', 'Jae-yong', 'jae-yong.lee@samsung.com', 'CEO', 'Technology', 'South Korea', 20000),
(17, 'Koo', 'Bon-joon', 'bon-joon.koo@lge.com', 'CEO', 'Technology', 'South Korea', 10000),
(18, 'Lee', 'Hae-jin', 'hae-jin.lee@naver.com', 'CEO', 'Technology', 'South Korea', 5000),
(19, 'Kim', 'Beom-soo', 'beom-soo@kakao.com', 'CEO', 'Technology', 'South Korea', 3000),
(20, 'Kim', 'Bom-seok', 'bom-seok@coupang.com', 'CEO', 'Technology', 'South Korea', 2000);
CREATE TABLE linkedin_posts1 (
  id INT NOT NULL,
  user_id INT NOT NULL,
  content VARCHAR(150) NOT NULL,
  timestamp DATETIME NOT NULL,
  primary key (id),
  foreign key (user_id) references linkedin_users (id)
);
insert into linkedin_posts1 (id, user_id, content, timestamp)
values(1, 1, "I'm excited to start a new chapter in my career as a Software Engineer at Google!", '2023-08-04 12:00:00'),
(2, 2, "I'm grateful for the opportunity to work on such a challenging and rewarding project at Meta.", '2023-08-05 13:00:00'),
(3, 3, "I'm passionate about using technology to make a positive impact on the world.", '2023-08-06 14:00:00'),
(4, 1, "I'm always looking for new ways to learn and grow, both professionally and personally.", '2023-08-07 15:00:00'),
(5, 2, "I'm grateful for the support of my family, friends, and mentors.", '2023-08-08 16:00:00'),
(6, 3, "I'm excited to see what the future holds for me and for the tech industry.", '2023-08-09 17:00:00'),
(7, 4, "I'm excited to share my new blog post on how to use machine learning to solve real-world problems. Check it out here: [link]", '2023-08-10 10:00:00'),
(8, 5, "I'm looking forward to speaking at the upcoming [conference name] conference about the future of data science.", '2023-08-11 11:00:00'),
(9, 6, "I'm grateful for the opportunity to mentor young professionals and help them achieve their goals.", '2023-08-12 12:00:00'),
(10, 7, "I'm passionate about diversity and inclusion in the tech industry. I'm excited to be a part of the community", '2023-08-13 13:00:00'),
(11, 4, 'I am excited to announce that I have been promoted to Senior Software Engineer at Google!', '2023-08-14 10:00:00'),
(12, 5, 'I am grateful for the opportunity to work with such a talented team at Meta.', '2023-08-15 11:00:00'),
(13, 6, 'I am passionate about using technology to solve real-world problems.', '2023-08-16 12:00:00'),
(14, 7, 'I am always looking for new challenges and opportunities to learn and grow.', '2023-08-17 13:00:00'),
(15, 8, 'I am committed to helping others achieve their goals and succeed.', '2023-08-18 14:00:00'),
(16, 9, 'I am grateful for the support of my family, friends, and mentors.', '2023-08-19 15:00:00'),
(17, 10, 'I am excited to see what the future holds.', '2023-08-20 16:00:00'),
(18, 11, 'I am a Data Scientist at Amazon, passionate about using data to solve real-world problems. I am also a mentor to young professionals.', '2023-08-21 10:00:00'),
(19, 12, 'I am a Software Engineer at Microsoft, passionate about building innovative and scalable products. I am also a contributor to open source projects.', '2023-08-22 11:00:00'),
(20, 13, 'I am a Product Manager at Google, passionate about building products that users love. I am also a advocate for diversity.', '2023-08-23 12:00:00');
select * from linkedin_posts1;
CREATE TABLE linkedin_education (
  id INT NOT NULL AUTO_INCREMENT,
  user_id INT NOT NULL,
  institution_name VARCHAR(25) NOT NULL,
  degree VARCHAR(25) NOT NULL,
  start_date DATETIME NOT NULL,
  end_date DATETIME NOT NULL,
  primary key (id),
  foreign key (user_id) references linkedin_users (id)
);
insert into linkedin_education (id, user_id, institution_name, degree, start_date, end_date)
values(1, 1, 'Stanford University', 'Bachelor in CS', '2018-08-01', '2022-06-10'),
(2, 2, 'Massachusetts Institute', 'Master in DS', '2020-08-01', '2022-06-10'),
(3, 3, 'Carnegie University', 'Bachelor in Electrical', '2019-08-01', '2023-06-10'),
(4, 4, 'University of California', 'Bachelor in Mechanical', '2020-08-01', '2024-06-10'),
(5, 5, 'University of Washington', 'Bachelor in Aerospace', '2021-08-01', '2025-06-10'),
(6, 6, 'New York University', 'Bachelor in Economics', '2018-08-01', '2022-06-10'),
(7, 7, 'UniversityofPennsylvania', 'Bachelor in Finance', '2019-08-01', '2023-06-10'),
(8, 8, 'Duke University', 'Bachelor in Accounting', '2020-08-01', '2024-06-10'),
(9, 9, 'Cornell University', 'Bachelor in Marketing', '2021-08-01', '2025-06-10'),
(10, 10, 'Northwestern University', 'Bachelor in Management', '2022-08-01', '2026-06-10'),
(11, 11, 'UniversityofMichigan', 'Bachelor in CS', '2019-08-01', '2023-06-10'),
(12, 12, 'Georgia Institute', 'Bachelor in Electrical', '2019-08-01', '2023-06-10'),
(13, 13, 'University of Texas', 'Bachelor in Mechanical', '2020-08-01', '2024-06-10'),
(14, 14, 'UniversityofIllinois', 'Bachelor in Aerospace', '2020-08-01', '2024-06-10'),
(15, 15, 'Purdue University', 'Bachelor in Civil', '2021-08-01', '2025-06-10'),
(16, 16, 'UniversityofCalifornia', 'Bachelor in Economics', '2019-08-01', '2023-06-10'),
(17, 17, 'UniversityofCalifornia', 'Bachelor in Finance', '2020-08-01', '2024-06-10'),
(18, 18, 'UniversityofCalifornia', 'Bachelor in Accounting', '2021-08-01', '2025-06-10'),
(19, 19, 'UniversityofCalifornia', 'Bachelor in Marketing', '2022-08-01', '2026-06-10'),
(20, 20, 'UniversityofCalifornia', 'Bachelor in Management', '2023-08-01', '2027-06-10');
select * from linkedin_education;
CREATE TABLE linkedin_experience1 (
  e_id INT NOT NULL AUTO_INCREMENT,
  user_id INT NOT NULL,
  skills varchar(40) not null,
  description varchar(50) not null,
  primary key (e_id),
  foreign key (user_id) references linkedin_users (id)
); 
alter TABLE linkedin_experience1 MODIFY description VARCHAR(400) NOT NULL;
alter TABLE linkedin_experience1 MODIFY skills VARCHAR(100) NOT NULL;
insert into linkedin_experience1 (user_id, skills, description)
values (1, 'Python, Java, JavaScript', 'Software Engineer at Google, with 5+ years of experience in designing, developing, and testing complex software systems. Strong knowledge of data structures, algorithms, and software design principles. Experience with cloud computing platforms such as AWS and GCP.'),
(2, 'Python, SQL, R', 'Data Scientist at Meta, with 3+ years of experience in collecting, cleaning, and analyzing data. Strong knowledge of machine learning algorithms and statistical methods. Experience in building and deploying machine learning models.'),
(3, 'Python, AWS, Azure', 'Software Engineer at Amazon, with 2+ years of experience in developing and deploying cloud-based applications. Experience with AWS and Azure cloud platforms, as well as a variety of programming languages and technologies.'),
(4, 'C++, C#, Python', 'Software Engineer at Microsoft, with 1+ year of experience in building high-performance software for Windows and Azure. Strong knowledge of C++, C#, and Python, as well as software design principles and best practices.'),
(5, 'Java, Objective-C, Swift', 'Software Engineer at Apple, with 6+ months of experience in developing innovative iOS and macOS applications. Strong knowledge of Java, Objective-C, and Swift, as well as the iOS and macOS development platforms.'),
(6, 'Financial modeling, investment banking, mergers and acquisitions', 'Investment Banking Analyst at Goldman Sachs, with 1 year of experience in advising clients on a variety of corporate finance transactions. Strong knowledge of financial modeling, valuation, and investment banking analysis.'),
(7, 'Financial analysis, risk management, credit analysis', 'Credit Analyst at JPMorgan Chase, with 2 years of experience in evaluating the creditworthiness of corporate borrowers. Strong knowledge of financial analysis, credit risk assessment, and portfolio management.'),
(8, 'Mergers and acquisitions, private equity, venture capital', 'Investment Banking Analyst at Morgan Stanley, with 3 years of experience in advising clients on mergers and acquisitions, private equity, and venture capital transactions. Strong knowledge of M&A, PE, and VC processes and principles.'),
(9, 'Corporate finance, financial reporting, treasury management', 'Finance Analyst at Citigroup, with 4 years of experience in supporting the company corporate finance, financial reporting, and treasury management functions. Strong knowledge of corporate finance principles, financial reporting standards, and treasury management practices.'),
(10, 'Commercial banking, relationship management, credit analysis', 'Relationship Manager at Bank of America'),
(11, 'Business strategy, operations management, project management', 'Management Consultant at Bain & Company, with 1 year of experience in advising clients on a variety of business strategy, operations, and project management issues. Strong analytical and problem-solving skills, as well as experience in working with clients at all levels of an organization.'),
(12, 'Strategy consulting, operations consulting, organizational design', 'Management Consultant at McKinsey & Company, with 2 years of experience in helping clients solve their most complex business challenges. Strong analytical and problem-solving skills, as well as experience in leading and managing complex projects.'),
(13, 'Change management, risk management, performance improvement', 'Management Consultant at Boston Consulting Group, with 3 years of experience in working with clients to implement complex change initiatives and improve their performance. Strong analytical and problem-solving skills, as well as experience in working with clients at all levels of an organization.'),
(14, 'Operations consulting, supply chain management, process improvement', 'Management Consultant at A.T. Kearney, with 4 years of experience in helping clients optimize their operations and supply chains. Strong analytical and problem-solving skills, as well as experience in leading and managing complex projects.'),
(15, 'Financial consulting, strategic planning, risk management', 'Management Consultant at Deloitte, with 5 years of experience in advising clients on a variety of financial, strategic, and risk management issues. Strong analytical and problem-solving skills, as well as experience in working with clients at all levels of an organization.'),
(16, 'Classroom management, lesson planning, student engagement', 'Teacher at New York City Public Schools, with 2 years of experience teaching math and science to middle school students. Strong classroom management skills and passion for helping students succeed.'),
(17, 'After-school programs, youth development, mentoring', 'Youth Program Coordinator at Boys & Girls Clubs of America'),
(18, 'Community service, volunteer management, event planning', 'Corps Member at AmeriCorps, leading and managing volunteer projects.'),
(19, 'International development, community development, education', 'Volunteer at Peace Corps, teaching and working on community development projects in a developing country.'),
(20, 'Construction, disaster relief, environmental protection', 'Volunteer at Habitat for Humanity, building and repairing homes for low-income families.');
select * from linkedin_experience1;
CREATE TABLE linkedin_company (
  id INT NOT NULL AUTO_INCREMENT,
  name VARCHAR(25) NOT NULL,
  industry VARCHAR(100) NOT NULL,
  location VARCHAR(100) NOT NULL,
  primary key (id)
); 
alter TABLE linkedin_company MODIFY name VARCHAR(50) NOT NULL;
insert into linkedin_company (id, name, industry, location)
values(1, 'Google', 'Technology', 'Mountain View, CA, USA'),
(2, 'Meta', 'Technology', 'Menlo Park, CA, USA'),
(3, 'Microsoft', 'Technology', 'Redmond, WA, USA'),
(4, 'Apple', 'Technology', 'Cupertino, CA, USA'),
(5, 'Amazon', 'Technology', 'Seattle, WA, USA'),
(6, 'Goldman Sachs', 'Financial Services', 'New York, NY, USA'),
(7, 'JPMorgan Chase', 'Financial Services', 'New York, NY, USA'),
(8, 'Morgan Stanley', 'Financial Services', 'New York, NY, USA'),
(9, 'Citigroup', 'Financial Services', 'New York, NY, USA'),
(10, 'Bank of America', 'Financial Services', 'Charlotte, NC, USA'),
(11, 'Bain & Company', 'Consulting', 'Boston, MA, USA'),
(12, 'McKinsey & Company', 'Consulting', 'New York, NY, USA'),
(13, 'Boston Consulting Group', 'Consulting', 'Boston, MA, USA'),
(14, 'A.T. Kearney', 'Consulting', 'Chicago, IL, USA'),
(15, 'Deloitte', 'Consulting', 'New York, NY, USA'),
(16, 'New York City Public Schools', 'Education', 'New York, NY, USA'),
(17, 'Boys & Girls Clubs of America', 'Nonprofit', 'Atlanta, GA, USA'),
(18, 'YMCA of the USA', 'Nonprofit', 'Chicago, IL, USA'),
(19, 'American Red Cross', 'Nonprofit', 'Washington, DC, USA'),
(20, 'Habitat for Humanity International', 'Nonprofit', 'Americus, GA, USA');
select * from linkedin_company;
 CREATE TABLE linkedin_job (
  id INT NOT NULL AUTO_INCREMENT,
  company_id INT NOT NULL,
  job_title VARCHAR(100) NOT NULL,
  location VARCHAR(100) NOT NULL,
  salary INT NOT NULL,
  primary key (id),
  foreign key (company_id) references linkedin_company (id)
); 
insert into linkedin_job (company_id, job_title, location, salary)
values (1, 'Software Engineer', 'Mountain View, CA, USA', 120000),
(1, 'Data Scientist', 'New York, NY', 130000),
(2, 'Software Engineer', 'Seattle, WA', 110000),
(2, 'Data Scientist', 'San Francisco, CA', 120000),
(3, 'Software Engineer', 'Austin, TX', 100000),
(3, 'Data Scientist', 'Chicago, IL', 110000),
(4, 'Software Engineer', 'London, UK', 80000),
(4, 'Data Scientist', 'Berlin, Germany', 90000),
(5, 'Software Engineer', 'Toronto, Canada', 100000),
(5, 'Data Scientist', 'Montreal, Canada', 110000),
(6, 'Investment Banking Analyst', 'New York, NY', 100000),
(7, 'Credit Analyst', 'Chicago, IL', 90000),
(8, 'Investment Banking Analyst', 'London, UK', 80000),
(9, 'Finance Analyst', 'San Francisco, CA', 100000),
(10, 'Relationship Manager', 'Seattle, WA', 90000),
(11, 'Management Consultant', 'Boston, MA', 120000),
(12, 'Management Consultant', 'New York, NY', 130000),
(13, 'Management Consultant', 'London, UK', 110000),
(14, 'Management Consultant', 'Paris, France', 120000),
(15, 'Management Consultant', 'Tokyo, Japan', 130000),
(16, 'Teacher', 'New York, NY', 60000),
(17, 'Youth Program Coordinator', 'Chicago, IL', 50000),
(18, 'After-School Program Coordinator', 'San Francisco, CA', 40000),
(19, 'Camp Counselor', 'Seattle, WA', 30000),
(20, 'Volunteer Coordinator', 'Austin, TX', 20000);
select * from linkedin_job;

CREATE TABLE linkedin (
  id INT NOT NULL AUTO_INCREMENT,
  first_name VARCHAR(20) NOT NULL,
  last_name VARCHAR(20) NOT NULL,
  email VARCHAR(50) NOT NULL,
  headline VARCHAR(50) NOT NULL,
  industry VARCHAR(50) NOT NULL,
  location VARCHAR(50) NOT NULL,
  connections INT NOT NULL,
  content VARCHAR(255) NOT NULL,
  timestamp DATETIME NOT NULL,
  institution_name VARCHAR(255) NOT NULL,
  degree VARCHAR(255) NOT NULL,
  start_date DATE NOT NULL,
  end_date DATE NOT NULL,
  skills VARCHAR(255) NOT NULL,
  description VARCHAR(355) NOT NULL,
  company_id INT NOT NULL,
  job_title VARCHAR(100) NOT NULL,
  salary INT NOT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (company_id) REFERENCES linkedin_company (id)
);

INSERT INTO linkedin (
  first_name,
  last_name,
  email,
  headline,
  industry,
  location,
  connections,
  content,
  timestamp,
  institution_name,
  degree,
  start_date,
  end_date,
  skills,
  description,
  company_id,
  job_title,
  salary
)
SELECT
  linkedin_users.first_name,
  linkedin_users.last_name,
  linkedin_users.email,
  linkedin_users.headline,
  linkedin_users.industry,
  linkedin_users.location,
  linkedin_users.connections,
  linkedin_posts1.content,
  linkedin_posts1.timestamp,
  linkedin_education.institution_name,
  linkedin_education.degree,
  linkedin_education.start_date,
  linkedin_education.end_date,
  linkedin_experience1.skills,
  linkedin_experience1.description,
  linkedin_job.company_id,
  linkedin_job.job_title,
  linkedin_job.salary
FROM linkedin_users
LEFT JOIN linkedin_posts1 ON linkedin_users.id = linkedin_posts1.user_id
LEFT JOIN linkedin_education ON linkedin_users.id = linkedin_education.user_id
LEFT JOIN linkedin_experience1 ON linkedin_users.id = linkedin_experience1.user_id
LEFT JOIN linkedin_job ON linkedin_experience1.user_id = linkedin_job.company_id
WHERE linkedin_posts1.content IS NOT NULL;
select * from linkedin;