USE ccio;

CREATE TABLE IF NOT EXISTS API (
  ke varchar(50) DEFAULT NULL,
  uid varchar(50) DEFAULT NULL,
  ip varchar(50),
  code varchar(100) DEFAULT NULL,
  details longtext,
  time timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE IF NOT EXISTS Cloud_Videos (
  mid varchar(50) NOT NULL,
  ke varchar(50) DEFAULT NULL,
  href text NOT NULL,
  size float DEFAULT NULL,
  time timestamp NULL DEFAULT NULL,
  end timestamp NULL DEFAULT NULL,
  status int(11) DEFAULT 0,
  details longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE IF NOT EXISTS Events (
  ke varchar(50) DEFAULT NULL,
  mid varchar(50) DEFAULT NULL,
  details longtext,
  time timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE IF NOT EXISTS Logs (
  ke varchar(50) DEFAULT NULL,
  mid varchar(50) DEFAULT NULL,
  info longtext,
  time timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE IF NOT EXISTS Monitors (
  mid varchar(50) DEFAULT NULL,
  ke varchar(50) DEFAULT NULL,
  name varchar(50) DEFAULT NULL,
  shto text DEFAULT NULL,
  shfr text DEFAULT NULL,
  details longtext,
  type varchar(50) DEFAULT 'jpeg',
  ext varchar(50) DEFAULT 'webm',
  protocol varchar(50) DEFAULT 'http',
  host varchar(100) DEFAULT '0.0.0.0',
  path varchar(100) DEFAULT '/',
  port int(11) DEFAULT 80,
  fps int(11) DEFAULT 1,
  mode varchar(15) DEFAULT NULL,
  width int(11) DEFAULT 640,
  height int(11) DEFAULT 360
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE IF NOT EXISTS Presets (
  ke varchar(50) DEFAULT NULL,
  name text DEFAULT NULL,
  details longtext,
  type varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE IF NOT EXISTS Users (
  ke varchar(50) DEFAULT NULL,
  uid varchar(50) DEFAULT NULL,
  auth varchar(50) DEFAULT NULL,
  mail varchar(100) DEFAULT NULL,
  pass varchar(200) DEFAULT NULL,
  accountType int(11) DEFAULT 0,
  details longtext,
  UNIQUE KEY mail (mail)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE IF NOT EXISTS Videos (
  mid varchar(50) DEFAULT NULL,
  ke varchar(50) DEFAULT NULL,
  ext varchar(5) DEFAULT NULL,
  time timestamp NULL DEFAULT NULL,
  duration float DEFAULT NULL,
  size float DEFAULT NULL,
  frames int(11) DEFAULT NULL,
  end timestamp NULL DEFAULT NULL,
  status int(11) DEFAULT 0,
  archived int(11) DEFAULT 0,
  details longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE IF NOT EXISTS Files (
  ke varchar(50) NOT NULL,
  mid varchar(50) NOT NULL,
  name varchar(50) NOT NULL,
  size float NOT NULL DEFAULT 0,
  details longtext NOT NULL,
  status int(11) NOT NULL DEFAULT 0,
  time timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE IF NOT EXISTS Schedules (
  ke varchar(50) DEFAULT NULL,
  name text DEFAULT NULL,
  details longtext,
  start varchar(10) DEFAULT NULL,
  end varchar(10) DEFAULT NULL,
  enabled int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE IF NOT EXISTS Timelapses (
  ke varchar(50) NOT NULL,
  mid varchar(50) NOT NULL,
  details longtext,
  date date NOT NULL,
  time timestamp NOT NULL DEFAULT current_timestamp(),
  end timestamp NOT NULL DEFAULT current_timestamp(),
  size int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE IF NOT EXISTS Timelapse_Frames (
  ke varchar(50) NOT NULL,
  mid varchar(50) NOT NULL,
  details longtext,
  filename varchar(50) NOT NULL,
  time timestamp NULL DEFAULT NULL,
  size int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE IF NOT EXISTS Cloud_Timelapse_Frames (
  ke varchar(50) NOT NULL,
  mid varchar(50) NOT NULL,
  href text NOT NULL,
  details longtext,
  filename varchar(50) NOT NULL,
  time timestamp NULL DEFAULT NULL,
  size int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE IF NOT EXISTS Events_Counts (
  ke varchar(50) NOT NULL,
  mid varchar(50) NOT NULL,
  details longtext NOT NULL,
  time timestamp NOT NULL DEFAULT current_timestamp(),
  end timestamp NOT NULL DEFAULT current_timestamp(),
  count int(11) NOT NULL DEFAULT 1,
  tag varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
