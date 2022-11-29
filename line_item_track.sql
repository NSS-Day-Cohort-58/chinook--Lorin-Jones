SELECT InvoiceLineId, InvoiceId, Track.Name FROM InvoiceLine
    JOIN Track
    ON InvoiceLine.TrackId = Track.TrackId;