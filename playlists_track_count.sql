select Playlist.Name as "Playlist Name", count(Track.Name) as "Number Of Tracks"
from Playlist, Track, PlaylistTrack
where Playlist.PlaylistId= PlaylistTrack.PlaylistId
and Track.TrackId= PlaylistTrack.TrackId
group by Playlist.Name;






