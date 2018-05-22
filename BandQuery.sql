#Albums Released in 1993
SELECT  B.BandName, A.AlbumName, L.LabelName, A.Formats, A.Year
FROM band AS B JOIN album AS A
	ON B.BandID= A.BAND_BandID
		JOIN label AS L
			ON A.LABEL_LabelID = L.LabelID
WHERE A.Year = 1993
ORDER BY B.BandName, A.AlbumName;

#Albums Released by Strife
SELECT  A.AlbumName, B.BandName, L.LabelName, A.Formats, A.Year
FROM band AS B JOIN album AS A
	ON B.BandID= A.BAND_BandID
		JOIN label AS L
			ON A.LABEL_LabelID = L.LabelID
WHERE B.BandName = 'Strife'
ORDER BY A.Year, A.AlbumName;


#Albums put out by Victory Records in 1990
SELECT AlbumName, BandName, Year, Formats
FROM album as a, band as b, label as l
WHERE a.Band_BandID = b.BandID
	AND a.LABEL_LabelID = l.labelID
	AND labelID = 3
    AND year = 1990
ORDER BY AlbumName;

# Number of albums from each state
SELECT BandHomeState, SUM(NumberOfReleases) as NumberOfAlbums
FROM band
GROUP BY BandHomeState
ORDER BY BandHomeState ASC;


#LPs released in x year
# LP REALEASED BETWEEN THE YEARS 1992- 1993, ORDERED BY THE YEAR
SELECT ALBUMNAME, FORMATS, YEAR
FROM ALBUM
WHERE FORMATS = 'LP' AND 
YEAR BETWEEN '1992' AND '1993'
ORDER BY YEAR

#Artist from state a and year b, and format x- devorah 
# ALBUM, BAND FROM YEAR 1990 AND 1997 IN LP FORMAT WITH A HOMEASTAE OF CA
SELECT A.ALBUMNAME, B.BANDNAME, A.YEAR, A.FORMATS, B.BANDHOMESTATE, B.BANDID
FROM ALBUM AS A, BAND AS B
WHERE A.BAND_BANDID = B.BANDID AND
B.BANDHOMESTATE = 'CA' AND 
A.YEAR BETWEEN '1990' AND '1997' AND
FORMATS = 'LP'
