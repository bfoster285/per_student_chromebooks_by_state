PROC Format;
   Value $FLAGF
         "0 " = "Not imputed"
         "1 " = "Imputed"
   ;
   Value LEVEL3F
          1  = "Elementary school"
          2  = "Middle school"
          3  = "High and other school"
   ;
   Value POVST4F
          1  = "Less than 35 percent or missing"
          2  = "35 to 49 percent"
          3  = "50 to 74 percent"
          4  = "75 percent or more"
   ;
   Value P_Q4AF
          0  = "Zero"
          1  = "1-199"
          2  = "200-499"
          3  = "500 or more"
   ;
   Value P_Q4BF
          0  = "Zero"
          1  = "1-49"
          2  = "50-199"
          3  = "200-499"
          4  = "500 or more"
   ;
   Value P_Q4CF
          0  = "Zero"
          1  = "1-49"
          2  = "50-99"
          3  = "100-299"
          4  = "300 or more"
   ;
   Value P_Q4DF
          0  = "Zero"
          1  = "1-24"
          2  = "25-49"
          3  = "50-99"
          4  = "100 or more"
   ;
   Value P_Q4EF
          0  = "Zero"
          1  = "1-24"
          2  = "25 or more"
   ;
   Value P_Q4TOTF
          1  = "1-199"
          2  = "200-499"
          3  = "500-999"
          4  = "1,000 or more"
   ;
   Value Q10F
          1  = "Not at all"
          2  = "Small extent"
          3  = "Moderate extent"
          4  = "Large extent"
   ;
   Value Q11F
          1  = "None"
          2  = "Minimal"
          3  = "Moderate"
          4  = "A lot"
   ;
   Value Q12F
          1  = "None"
          2  = "Minimal"
          3  = "Moderate"
          4  = "A lot"
   ;
   Value Q13F
          -8  = "Not applicable, students take school computer home"
          1  = "Yes"
          2  = "No"
   ;
   Value Q14F
          1  = "Yes"
          2  = "No"
   ;
   Value Q15SERF
          1  = "Not at all"
          2  = "Small extent"
          3  = "Moderate extent"
          4  = "Large extent"
   ;
   Value Q16SERF
          1  = "Not at all"
          2  = "Small extent"
          3  = "Moderate extent"
          4  = "Large extent"
   ;
   Value Q17SERF
          1  = "Yes"
          2  = "No"
   ;
   Value Q18SERF
          1  = "Strongly agree"
          2  = "Somewhat agree"
          3  = "Somewhat disagree"
          4  = "Strongly disagree"
   ;
   Value Q19SERF
          1  = "Strongly agree"
          2  = "Somewhat agree"
          3  = "Somewhat disagree"
          4  = "Strongly disagree"
   ;
   Value Q1F
          1  = "Yes"
          2  = "No"
   ;
   Value Q20SERF
          1  = "Not a challenge"
          2  = "Small challenge"
          3  = "Moderate challenge"
          4  = "Large challenge"
   ;
   Value Q2F
          -8  = "Inapplicable"
          1  = "Yes"
          2  = "No"
   ;
   Value Q3F
          -8  = "Inapplicable"
          1  = "Yes, in all grade levels"
          2  = "Yes, in some grade levels"
          3  = "No"
   ;
   Value Q5F
          1  = "Poor"
          2  = "Fair"
          3  = "Good"
          4  = "Very good"
   ;
   Value Q6F
          1  = "Poor"
          2  = "Fair"
          3  = "Good"
          4  = "Very good"
   ;
   Value Q7F
          1  = "Not at all"
          2  = "Small extent"
          3  = "Moderate extent"
          4  = "Large extent"
   ;
   Value Q8F
          1  = "Always difficult"
          2  = "Usually difficult"
          3  = "Usually easy"
          4  = "Always easy"
   ;
   Value Q9F
          1  = "Not reliable"
          2  = "Slightly reliable"
          3  = "Somewhat reliable"
          4  = "Very reliable"
   ;
   Value SIZCL2F
          1  = "Less than 300"
          2  = "300 – 499"
          3  = "500 – 999"
          4  = "1,000 or more"
   ;
   Value URBANF
          1  = "City"
          2  = "Suburban"
          3  = "Town"
          4  = "Rural"
   ;
RUN;
