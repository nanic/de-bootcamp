select from_unixtime(ts/1000, \"yyyy-MM-dd HH:mm:ss\") as date, ts, hour(date) as hour, day(date) as day, weekofyear(date) as week,month(date) as month,  year(date) as year,  dayofweek(date) as weekday from log_data;

SELECT monotonically_increasing_id(), log.ts, log.userId as userid, log.level, song.song_id as songid, log.song, song.artist_id as artistid, song.artist_name as artistname, log.sessionId as sessionid, log.location, log.userAgent as useragent FROM log_data as log JOIN song_data as song ON log.song = song.title AND log.artist = song.artist_name AND log.length = song.duration AND log.page = 'NextSong';

SELECT time.week, song plays.artistname, songplays.userid, songplays.sessionid FROM songplays JOIN time ON songplays.ts = time.ts;
