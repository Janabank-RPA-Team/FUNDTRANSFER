Sub formatting()
   Dim ws As Worksheet
   Set ws=ThisWorkbook.Sheets("Sheet1")
   ws.UsedRange.Value= ws.UsedRange.Value
End Sub