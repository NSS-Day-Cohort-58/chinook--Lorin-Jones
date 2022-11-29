SELECT Playlist.Name, COUNT(*) FROM Playlist
    JOIN PlaylistTrack
    ON Playlist.PlaylistId = PlaylistTrack.PlaylistId
    JOIN Track
    ON PlaylistTrack.TrackId = Track.TrackId
    GROUP BY Playlist.PlaylistId