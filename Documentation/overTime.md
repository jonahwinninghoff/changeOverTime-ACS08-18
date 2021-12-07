---
title: "Trends in Educational Attainment"
date: 'December 09, 2019'
output: word_document
---

\newline \newline \newline


\newline \newline \newline





\newline \newline \newline


## Data Notes

- Years 2008- 2018
- Non-institutionalized population
- Ages 25-64
- Excludes Puerto Rico
- Race/Ethnicity: If Respondent indicated Hispanic, marked as Hispanic (i.e. Black Hispanic=Hispanic)

## Trend Methodology

### Growth
"Growth" is just the difference between 2018 and 2008. It only uses
data from those two years.

### Trends
A "Trend" in this document is a linear regression coefficient,
regressing the measure of attainment on a linear year variable.
True trends are unlikely to be linear; however, the coefficient from
the linear model can still be interpreted as the average linear change
over the course of the study period (i.e. 2008-2016).
In particular, positive coefficients indicate increasing trends, on average---this
would not rule out plateaus or or decreasing trends over part of the
study period---it refers only to overall averages.

Age is a strong predictor of educational attainment, and changes in
the age composition of the population may induce changes in average
educational attainment, even absent policy relevant effects.
The "age adjusted trends," or "Trend (Adj)" reported here accounts for
the age composition by including age fixed effects in the linear
models.
Since age predicts educational attainment, in many cases this has the
effect of reducing residual error and increasing precision, even if
age compositions remained constant.

To estimate a trend in, say, high school completion, we first
estimated average completion overall and within each age category in each study
year, along with standard errors.
These estimates and standard errors used the survey weights and
replication weights provided in the ACS.
Then, we estimated weighted least squares models with these averages
as data, and the reciprical of the squared standard error as weights.
To estimate unadjusted trends, we used overall averages, and to to
estimate adjusted trends, we used age-specific averages.

### Multiplicity Adjustment and Hypothesis Tests
Each estimate in this report is accompanied by an 95% margin of error,
denoted with a $\pm$ symbol.
These, combined with the estimates themselves, define 95% confidence
intervals for the appropriate population quantity.
For instance, we estimate that in 2016
81.7% of deaf females had
attained a high school diploma, with a margin of error of
0.76 percentage
points.
Therefore, a confidence interval for the true percentage of female
deaf Americans with a high school diploma in 2016 is
(80.9, 82.4).
These intervals are not adjusted for multiplicity; therefore, we may assume that
roughly 95% of them are "correct," in
that they include the true population parameter.

We also conducted a series of explicit hypothesis tests, testing for
the existance (and direction) of age-adjusted linear trends over time for subgroups
of deaf Americans.<!--, and within-subgroup differences in trends between
deaf and hearing Americans.-->
We tested hypothesis about *only* age-adjusted trends; though we
estimated non-adjusted trends, we did not conduct explicit hypothesis
tests for them.

We corrected these hypothesis tests for multiplicity with the
following <!--hierarchical--> procedure.
First, we tested for overall trends in high school, associate degree, and bachelor degree
completion for deaf Americans with a Holm procedure.
If those were significant, we went on to test for trends within
subgroups of deaf Americans and for differences in trends between deaf
and hearing americans and within subgroups; <!--corrected with the Hommel procedure
(Hommel 1988), which assumes that all of
the hypothesis tests are either independent or positively
correlated---a reasonable assumption in this context.
This overall procedure controls the familywise error rate, so the
probability of incorrectly rejecting any null hypotheses tested in
this document at the 0.05 level, say, is at most 5%.
Finally, we tested for differences in treands between deaf and hearing
Americans, overall and within subgroups where we had previously detected
a deaf trend;--> these hypothesis tests were adjusted with the
Bejnamini-Hochberg procedure, which controls the "false discovery
rate" Benjamini & Hochberg (1995).
False discovery rate control implies that we may expect, say, 5% of
rejections at the $\alpha=0.05$ level to be incorrect; it is a more
liberal control of multiplicity than the usual "familywise error rate."
We conducted this procedure using three different levels: null hypotheses
rejected at the 0.05 level are denoted with a \*, at the 0.01 level
with \*\*, and at the 0.001 level with \*\*\*.

Note that we did not test for trends among hearing Americans or
differences between hearing and deaf Americans, and did
not test hypotheses about attainment in any given year or about growth
from 2008 to 2016.

Since the hypothesis tests were multiplicity-adjusted and the
confidence intervals were not, they frequently do not agree---there
are 95% confidence intervals that do not contain zero but whose
associated null hypotheses were not rejected at the 0.05 level.



# High School

******
|Year             |Deaf             |Hearing        |
|:----------------|:----------------|:--------------|
|2008             |80.1 $\pm$ 0.5   |87.7 $\pm$ 0.1 |
|2009             |80.2 $\pm$ 0.5   |87.9 $\pm$ 0.1 |
|2010             |80.4 $\pm$ 0.5   |88 $\pm$ 0.1   |
|2011             |81.3 $\pm$ 0.5   |88.2 $\pm$ 0.1 |
|2012             |81.5 $\pm$ 0.5   |88.5 $\pm$ 0.1 |
|2013             |82.4 $\pm$ 0.5   |88.5 $\pm$ 0.1 |
|2014             |82.6 $\pm$ 0.5   |88.7 $\pm$ 0.1 |
|2015             |82.9 $\pm$ 0.5   |88.8 $\pm$ 0.1 |
|2016             |82.3 $\pm$ 0.5   |89 $\pm$ 0.1   |
|2017             |83.7 $\pm$ 0.4   |89.4 $\pm$ 0.1 |
|2018             |84.2 $\pm$ 0.5   |89.6 $\pm$ 0.1 |
|Growth           |4.2 $\pm$ 0.7    |1.9 $\pm$ 0.1  |
|Trend            |0.4 $\pm$ 0.1    |0.2 $\pm$ 0    |
|Trend (Adj)      |0.5 $\pm$ 0.1*** |0.2 $\pm$ 0    |
|Sample Size/year |38,892           |1,551,126      |

Table: High School completion from 2008-2016.
******
\newline \newline \newline
![High School completion over time. Error bars are approximate 95% confidence intervals.](figure/HStotFig-1.png)
<br><br><br><br>
\newline \newline \newline
![Change in High School completion over time. Error bars are approximate 95% confidence intervals.](figure/HStotFigChange-1.png)

### By Gender
\newline \newline \newline

|Year             |Female           |Male             |
|:----------------|:----------------|:----------------|
|2008             |78.9 $\pm$ 0.9   |80.7 $\pm$ 0.5   |
|2009             |79.1 $\pm$ 0.9   |80.9 $\pm$ 0.6   |
|2010             |78.8 $\pm$ 0.9   |81.2 $\pm$ 0.6   |
|2011             |80.3 $\pm$ 0.9   |82 $\pm$ 0.6     |
|2012             |80.7 $\pm$ 0.8   |82 $\pm$ 0.7     |
|2013             |82.1 $\pm$ 0.6   |82.5 $\pm$ 0.6   |
|2014             |82.1 $\pm$ 0.8   |82.9 $\pm$ 0.5   |
|2015             |82.3 $\pm$ 0.7   |83.2 $\pm$ 0.7   |
|2016             |81.7 $\pm$ 0.8   |82.6 $\pm$ 0.7   |
|2017             |83.7 $\pm$ 0.8   |83.7 $\pm$ 0.6   |
|2018             |84 $\pm$ 0.7     |84.4 $\pm$ 0.6   |
|Growth           |5 $\pm$ 1.1      |3.7 $\pm$ 0.8    |
|Trend            |0.5 $\pm$ 0.1    |0.3 $\pm$ 0.1    |
|Trend (Adj)      |0.5 $\pm$ 0.1*** |0.4 $\pm$ 0.1*** |
|Sample Size/year |14,202           |24,690           |

Table: Percentage of deaf Americans by gender attaining a
High School diploma or equivalent.



\newline \newline \newline

|Year             |Female         |Male           |
|:----------------|:--------------|:--------------|
|2008             |88.9 $\pm$ 0.1 |86.5 $\pm$ 0.1 |
|2009             |89 $\pm$ 0.1   |86.7 $\pm$ 0.1 |
|2010             |89.1 $\pm$ 0.1 |86.8 $\pm$ 0.1 |
|2011             |89.2 $\pm$ 0.1 |87.2 $\pm$ 0.1 |
|2012             |89.5 $\pm$ 0.1 |87.4 $\pm$ 0.1 |
|2013             |89.5 $\pm$ 0.1 |87.4 $\pm$ 0.1 |
|2014             |89.7 $\pm$ 0.1 |87.7 $\pm$ 0.1 |
|2015             |89.8 $\pm$ 0.1 |87.7 $\pm$ 0.1 |
|2016             |90 $\pm$ 0.1   |87.8 $\pm$ 0.1 |
|2017             |90.4 $\pm$ 0.1 |88.5 $\pm$ 0.1 |
|2018             |90.6 $\pm$ 0.1 |88.7 $\pm$ 0.1 |
|Growth           |1.7 $\pm$ 0.1  |2.2 $\pm$ 0.2  |
|Trend            |0.2 $\pm$ 0    |0.2 $\pm$ 0    |
|Trend (Adj)      |0.2 $\pm$ 0    |0.2 $\pm$ 0    |
|Sample Size/year |809,653        |741,472        |

Table: Percentage of hearing Americans by gender attaining a
High School diploma or equivalent.

\newline \newline \newline


<!-- Table: Differences in growth and trends between deaf and hearing -->
<!-- Americans for males and females. Positive Differences indicate faster -->
<!-- growth for deaf Americans. -->



\newline \newline \newline
![High School completion by gender over time. Error bars are approximate 95% confidence intervals.](figure/HSSexFig-1.png)
\newline \newline \newline
![Change in High School completion by gender over time. Error bars are approximate 95% confidence intervals.](figure/HSSexFigChange-1.png)

### 25-34

\newline \newline \newline

|Year             |25-34            |35-44            |45-54            |55-64            |
|:----------------|:----------------|:----------------|:----------------|:----------------|
|2008             |80.2 $\pm$ 1.8   |80 $\pm$ 1.1     |79.6 $\pm$ 1     |80.4 $\pm$ 0.7   |
|2009             |82.2 $\pm$ 1.5   |79.5 $\pm$ 1.5   |79.4 $\pm$ 0.9   |80.6 $\pm$ 0.7   |
|2010             |81.5 $\pm$ 1.7   |80.4 $\pm$ 1.5   |78.7 $\pm$ 1     |81.2 $\pm$ 0.7   |
|2011             |82.4 $\pm$ 1.7   |80.5 $\pm$ 1.6   |80 $\pm$ 0.9     |82.2 $\pm$ 0.8   |
|2012             |83.6 $\pm$ 1.5   |81.9 $\pm$ 1.4   |80 $\pm$ 0.8     |81.9 $\pm$ 0.7   |
|2013             |82.1 $\pm$ 1.6   |82.1 $\pm$ 1.3   |80.7 $\pm$ 0.8   |83.5 $\pm$ 0.7   |
|2014             |84.1 $\pm$ 1.6   |83.7 $\pm$ 1.2   |80.6 $\pm$ 0.9   |83.2 $\pm$ 0.6   |
|2015             |85.1 $\pm$ 1.5   |83.5 $\pm$ 1.2   |82.5 $\pm$ 0.9   |82.4 $\pm$ 0.7   |
|2016             |85.6 $\pm$ 1.5   |82.8 $\pm$ 1.3   |80.9 $\pm$ 1     |82.1 $\pm$ 0.7   |
|2017             |86.4 $\pm$ 1.5   |84.1 $\pm$ 1.4   |82.2 $\pm$ 0.9   |83.8 $\pm$ 0.6   |
|2018             |85.5 $\pm$ 1.5   |85.5 $\pm$ 1.1   |83.7 $\pm$ 1     |83.8 $\pm$ 0.7   |
|Growth           |5.4 $\pm$ 2.4    |5.5 $\pm$ 1.6    |4.1 $\pm$ 1.4    |3.5 $\pm$ 1      |
|Trend            |0.6 $\pm$ 0.1    |0.5 $\pm$ 0.1    |0.4 $\pm$ 0.2    |0.3 $\pm$ 0.1    |
|Trend (Adj)      |0.6 $\pm$ 0.2*** |0.6 $\pm$ 0.1*** |0.4 $\pm$ 0.1*** |0.3 $\pm$ 0.1*** |
|Sample Size/year |3,180            |4,868            |10,724           |20,119           |

Table: Percentage of deaf Americans by age category attaining a
High School diploma or equivalent.



\newline \newline \newline

|Year             |25-34          |35-44          |45-54          |55-64          |
|:----------------|:--------------|:--------------|:--------------|:--------------|
|2008             |86.9 $\pm$ 0.2 |87.7 $\pm$ 0.1 |88.4 $\pm$ 0.1 |87.8 $\pm$ 0.1 |
|2009             |87.5 $\pm$ 0.2 |87.6 $\pm$ 0.2 |88.3 $\pm$ 0.1 |88 $\pm$ 0.2   |
|2010             |87.7 $\pm$ 0.2 |87.8 $\pm$ 0.1 |88.1 $\pm$ 0.1 |88.3 $\pm$ 0.1 |
|2011             |88.4 $\pm$ 0.1 |87.8 $\pm$ 0.2 |88.1 $\pm$ 0.1 |88.5 $\pm$ 0.2 |
|2012             |88.9 $\pm$ 0.2 |88 $\pm$ 0.1   |88.3 $\pm$ 0.1 |88.7 $\pm$ 0.1 |
|2013             |89 $\pm$ 0.1   |87.9 $\pm$ 0.1 |88.2 $\pm$ 0.1 |88.8 $\pm$ 0.1 |
|2014             |89.7 $\pm$ 0.1 |88.1 $\pm$ 0.1 |88.1 $\pm$ 0.2 |88.8 $\pm$ 0.1 |
|2015             |90.2 $\pm$ 0.1 |88.1 $\pm$ 0.1 |88.1 $\pm$ 0.1 |88.6 $\pm$ 0.1 |
|2016             |90.6 $\pm$ 0.1 |88.2 $\pm$ 0.1 |88.3 $\pm$ 0.1 |88.6 $\pm$ 0.1 |
|2017             |91.4 $\pm$ 0.1 |88.8 $\pm$ 0.1 |88.6 $\pm$ 0.1 |88.9 $\pm$ 0.1 |
|2018             |91.9 $\pm$ 0.1 |89 $\pm$ 0.2   |88.7 $\pm$ 0.1 |88.8 $\pm$ 0.1 |
|Growth           |4.9 $\pm$ 0.2  |1.3 $\pm$ 0.2  |0.3 $\pm$ 0.2  |1 $\pm$ 0.2    |
|Trend            |0.5 $\pm$ 0    |0.1 $\pm$ 0    |0 $\pm$ 0      |0.1 $\pm$ 0    |
|Trend (Adj)      |0.5 $\pm$ 0    |0.1 $\pm$ 0    |0 $\pm$ 0      |0.1 $\pm$ 0.1  |
|Sample Size/year |350,159        |362,410        |424,763        |413,794        |

Table: Percentage of hearing Americans by age category attaining a
High School diploma or equivalent.

\newline \newline \newline


<!-- Table: Differences in growth and trends between deaf and hearing -->
<!-- Americans for each age category. Positive Differences indicate faster -->
<!-- growth for deaf Americans. -->


\newline \newline \newline
![High School completion by age category over time. Error bars are approximate 95% confidence intervals.](figure/HSByAgeCatFig-1.png)
\newline \newline \newline
![Change in High School completion by age category over time. Error bars are approximate 95% confidence intervals.](figure/HSByAgeCatFigChange-1.png)

### By Race/Ethnicity
\newline \newline \newline

|Year             |African American |American Indian |Asian/PacIsl   |Hispanic         |Other          |White            |
|:----------------|:----------------|:---------------|:--------------|:----------------|:--------------|:----------------|
|2008             |72.3 $\pm$ 1.5   |80.4 $\pm$ 3.4  |75.2 $\pm$ 3.7 |57.1 $\pm$ 2     |82.6 $\pm$ 3   |84.4 $\pm$ 0.6   |
|2009             |71.8 $\pm$ 2.1   |77.6 $\pm$ 4    |72.9 $\pm$ 4.3 |59.1 $\pm$ 2.3   |79.9 $\pm$ 4   |84.4 $\pm$ 0.5   |
|2010             |73.5 $\pm$ 1.8   |81.3 $\pm$ 3.5  |73.2 $\pm$ 3.9 |59.1 $\pm$ 2     |82.3 $\pm$ 4.4 |84.4 $\pm$ 0.5   |
|2011             |74.1 $\pm$ 2     |81.3 $\pm$ 3.5  |72.9 $\pm$ 4   |61.3 $\pm$ 2.3   |83 $\pm$ 2.8   |85.5 $\pm$ 0.5   |
|2012             |74.3 $\pm$ 2     |78 $\pm$ 3.7    |73.9 $\pm$ 3.9 |60.6 $\pm$ 1.7   |85 $\pm$ 3     |86 $\pm$ 0.5     |
|2013             |77.2 $\pm$ 1.7   |81 $\pm$ 3.3    |74 $\pm$ 3.7   |61.9 $\pm$ 1.8   |84.3 $\pm$ 3.3 |86.5 $\pm$ 0.5   |
|2014             |76.6 $\pm$ 1.9   |80 $\pm$ 3.5    |75.9 $\pm$ 4.2 |63.9 $\pm$ 1.8   |82.7 $\pm$ 3.2 |86.9 $\pm$ 0.5   |
|2015             |77.2 $\pm$ 1.8   |81.5 $\pm$ 4    |76.1 $\pm$ 3.2 |63.1 $\pm$ 1.8   |84 $\pm$ 3     |87.1 $\pm$ 0.5   |
|2016             |78.7 $\pm$ 1.8   |77.2 $\pm$ 4.1  |75 $\pm$ 3.5   |64.5 $\pm$ 1.5   |82.3 $\pm$ 3.1 |86.3 $\pm$ 0.5   |
|2017             |79.5 $\pm$ 1.8   |76.1 $\pm$ 3.9  |75.2 $\pm$ 4.3 |67.4 $\pm$ 1.7   |84.3 $\pm$ 3.1 |87.6 $\pm$ 0.5   |
|2018             |81.1 $\pm$ 2.1   |81.1 $\pm$ 3.5  |78.5 $\pm$ 3.2 |68.1 $\pm$ 2     |85.2 $\pm$ 2.9 |87.9 $\pm$ 0.5   |
|Growth           |8.8 $\pm$ 2.5    |0.7 $\pm$ 4.9   |3.2 $\pm$ 4.9  |11 $\pm$ 2.8     |2.5 $\pm$ 4.2  |3.5 $\pm$ 0.8    |
|Trend            |0.9 $\pm$ 0.1    |-0.1 $\pm$ 0.4  |0.4 $\pm$ 0.4  |1 $\pm$ 0.2      |0.2 $\pm$ 0.2  |0.4 $\pm$ 0.1    |
|Trend (Adj)      |0.8 $\pm$ 0.2*** |0 $\pm$ 0.4     |0.4 $\pm$ 0.3. |1.1 $\pm$ 0.2*** |0.3 $\pm$ 0.3. |0.4 $\pm$ 0.1*** |
|Sample Size/year |3,014            |720             |850            |3,767            |870            |29,671           |

Table: Percentage of deaf Americans by race/ethnicity attaining a
High School diploma or equivalent.



\newline \newline \newline

|Year             |African American |American Indian |Asian/PacIsl   |Hispanic       |Other          |White          |
|:----------------|:----------------|:---------------|:--------------|:--------------|:--------------|:--------------|
|2008             |86 $\pm$ 0.3     |83.4 $\pm$ 1.2  |88.3 $\pm$ 0.4 |63.3 $\pm$ 0.3 |89.4 $\pm$ 0.6 |93.1 $\pm$ 0.1 |
|2009             |86.3 $\pm$ 0.2   |84.5 $\pm$ 0.9  |88.6 $\pm$ 0.3 |63.4 $\pm$ 0.3 |90.4 $\pm$ 0.5 |93.3 $\pm$ 0.1 |
|2010             |86.7 $\pm$ 0.2   |83.7 $\pm$ 0.8  |88.7 $\pm$ 0.3 |64.7 $\pm$ 0.3 |90.1 $\pm$ 0.5 |93.5 $\pm$ 0.1 |
|2011             |87.1 $\pm$ 0.2   |85.5 $\pm$ 0.8  |88.3 $\pm$ 0.3 |65.5 $\pm$ 0.3 |90.5 $\pm$ 0.5 |93.7 $\pm$ 0.1 |
|2012             |87.6 $\pm$ 0.2   |85 $\pm$ 0.8    |88.8 $\pm$ 0.3 |66.6 $\pm$ 0.3 |90.7 $\pm$ 0.5 |93.9 $\pm$ 0.1 |
|2013             |87.8 $\pm$ 0.2   |84.9 $\pm$ 0.8  |89.2 $\pm$ 0.3 |67.1 $\pm$ 0.3 |91.3 $\pm$ 0.5 |93.9 $\pm$ 0.1 |
|2014             |88.3 $\pm$ 0.2   |85.3 $\pm$ 0.8  |89.3 $\pm$ 0.2 |67.8 $\pm$ 0.3 |91.6 $\pm$ 0.5 |94 $\pm$ 0.1   |
|2015             |88.6 $\pm$ 0.2   |85.1 $\pm$ 1    |89.6 $\pm$ 0.3 |68.5 $\pm$ 0.3 |92.4 $\pm$ 0.4 |94.1 $\pm$ 0.1 |
|2016             |88.8 $\pm$ 0.2   |85.9 $\pm$ 0.7  |89.6 $\pm$ 0.3 |69.5 $\pm$ 0.3 |91.6 $\pm$ 0.4 |94.1 $\pm$ 0.1 |
|2017             |89.3 $\pm$ 0.2   |85.6 $\pm$ 0.8  |90.1 $\pm$ 0.3 |71.4 $\pm$ 0.3 |92.8 $\pm$ 0.4 |94.4 $\pm$ 0.1 |
|2018             |89.6 $\pm$ 0.2   |85.3 $\pm$ 0.9  |90.7 $\pm$ 0.2 |72.2 $\pm$ 0.3 |92.9 $\pm$ 0.4 |94.5 $\pm$ 0.1 |
|Growth           |3.6 $\pm$ 0.3    |1.9 $\pm$ 1.5   |2.4 $\pm$ 0.4  |8.9 $\pm$ 0.5  |3.5 $\pm$ 0.7  |1.4 $\pm$ 0.1  |
|Trend            |0.4 $\pm$ 0      |0.2 $\pm$ 0.1   |0.2 $\pm$ 0.1  |0.9 $\pm$ 0.1  |0.3 $\pm$ 0.1  |0.1 $\pm$ 0    |
|Trend (Adj)      |0.4 $\pm$ 0      |0.2 $\pm$ 0.1   |0.2 $\pm$ 0    |0.9 $\pm$ 0.1  |0.3 $\pm$ 0.1  |0.1 $\pm$ 0    |
|Sample Size/year |150,209          |13,058          |86,979         |202,398        |24,996         |1,073,486      |

Table: Percentage of hearing Americans by race/ethnicity attaining a
High School diploma or equivalent.

\newline \newline \newline


<!-- Table: Differences in growth and trends between deaf and hearing -->
<!-- Americans for each race/ethnicity. Positive Differences indicate faster -->
<!-- growth for deaf Americans. -->


\newline \newline \newline
![High School completion by race/ethnicity over time. Error bars are approximate 95% confidence intervals.](figure/HSRaceFig-1.png)
\newline \newline \newline
![Change in High School completion by race/ethnicity over time. Error bars are approximate 95% confidence intervals.](figure/HSRaceFigChange-1.png)


<!-- Table: Differences in growth and trends between female deaf and hearing -->
<!-- Americans for each race/ethicity category. Positive Differences indicate faster -->
<!-- growth for deaf Americans. -->

<!-- #### Deaf Hearing Differences by Race: Male -->
\newline \newline \newline


<!-- Table: Differences in growth and trends between male deaf and hearing -->
<!-- Americans for each race/ethicity category. Positive Differences indicate faster -->
<!-- growth for deaf Americans. -->



\newline \newline \newline
![Female High School completion by race/ethnicity over time. Error bars are approximate 95% confidence intervals.](figure/HSRaceFemFig-1.png)
![Male High School completion by race/ethnicity over time. Error bars are approximate 95% confidence intervals.](figure/HSRaceMalFig-1.png)


\newline \newline \newline
![Female High School completion by race/ethnicity over time. Error bars are approximate 95% confidence intervals.](figure/HSRaceFemFigChg-1.png)
![Male High School completion by race/ethnicity over time. Error bars are approximate 95% confidence intervals.](figure/HSRaceMalFigChg-1.png)




#### Deaf Female
\newline \newline \newline

|Year             |African American |American Indian |Asian/PacIsl   |Hispanic         |Other          |White            |
|:----------------|:----------------|:---------------|:--------------|:----------------|:--------------|:----------------|
|2008             |71.5 $\pm$ 2.7   |77.4 $\pm$ 5.8  |72.1 $\pm$ 5.4 |55.7 $\pm$ 2.7   |79.4 $\pm$ 5.2 |84.5 $\pm$ 0.9   |
|2009             |70.2 $\pm$ 3.1   |69.8 $\pm$ 7.6  |64.6 $\pm$ 6.3 |59.2 $\pm$ 3.4   |77.8 $\pm$ 6.6 |84.7 $\pm$ 0.9   |
|2010             |74.8 $\pm$ 2.4   |85 $\pm$ 4.9    |68.3 $\pm$ 6.3 |56.5 $\pm$ 3.1   |82.8 $\pm$ 6.8 |83.6 $\pm$ 1     |
|2011             |72.1 $\pm$ 3     |75.1 $\pm$ 6.5  |69.1 $\pm$ 5.8 |60.3 $\pm$ 3.7   |79.6 $\pm$ 4.9 |85.9 $\pm$ 0.9   |
|2012             |72.8 $\pm$ 2.9   |81.2 $\pm$ 5.1  |71.6 $\pm$ 5.7 |58.9 $\pm$ 3     |86.4 $\pm$ 5.5 |86.3 $\pm$ 0.8   |
|2013             |76.8 $\pm$ 2.6   |81.8 $\pm$ 5.8  |71.5 $\pm$ 5.4 |61.7 $\pm$ 2.9   |84.8 $\pm$ 4.7 |87.1 $\pm$ 0.8   |
|2014             |77.8 $\pm$ 2.4   |77.8 $\pm$ 5.8  |74 $\pm$ 5.8   |62.6 $\pm$ 2.4   |81 $\pm$ 4.5   |87.2 $\pm$ 0.9   |
|2015             |77.1 $\pm$ 2.3   |77.6 $\pm$ 7.2  |74.3 $\pm$ 5.3 |64.5 $\pm$ 3.1   |81 $\pm$ 6.3   |87.2 $\pm$ 0.8   |
|2016             |79.7 $\pm$ 2.6   |78.9 $\pm$ 6.2  |67.3 $\pm$ 5.9 |63.4 $\pm$ 2.9   |84.2 $\pm$ 4.7 |86.5 $\pm$ 0.8   |
|2017             |80.6 $\pm$ 2.6   |72.2 $\pm$ 7.7  |72.2 $\pm$ 6   |66.5 $\pm$ 3     |85.8 $\pm$ 4.6 |88.4 $\pm$ 0.9   |
|2018             |80.7 $\pm$ 2.6   |78.5 $\pm$ 6.7  |76.7 $\pm$ 4.5 |67.7 $\pm$ 2.7   |87.5 $\pm$ 4.1 |88.4 $\pm$ 0.9   |
|Growth           |9.2 $\pm$ 3.8    |1.1 $\pm$ 8.8   |4.6 $\pm$ 7    |12 $\pm$ 3.9     |8.1 $\pm$ 6.6  |3.9 $\pm$ 1.3    |
|Trend            |1 $\pm$ 0.2      |-0.2 $\pm$ 0.9  |0.6 $\pm$ 0.7  |1.1 $\pm$ 0.2    |0.7 $\pm$ 0.3  |0.4 $\pm$ 0.1    |
|Trend (Adj)      |1 $\pm$ 0.3***   |0.1 $\pm$ 0.6   |0.3 $\pm$ 0.5  |1.1 $\pm$ 0.3*** |0.6 $\pm$ 0.5* |0.4 $\pm$ 0.1*** |
|Sample Size/year |1,420            |276             |398            |1,560            |342            |10,205           |

Table: Percentage of female deaf Americans by race/ethnicity attaining a
High School diploma or equivalent.

#### Deaf Male
\newline \newline \newline

|Year             |African American |American Indian |Asian/PacIsl   |Hispanic         |Other          |White            |
|:----------------|:----------------|:---------------|:--------------|:----------------|:--------------|:----------------|
|2008             |73 $\pm$ 2.3     |82.5 $\pm$ 3.6  |78 $\pm$ 4.1   |58 $\pm$ 2.6     |84.8 $\pm$ 3.8 |84.3 $\pm$ 0.7   |
|2009             |73.4 $\pm$ 2.6   |82.4 $\pm$ 4.7  |79.5 $\pm$ 4.4 |59.1 $\pm$ 2.6   |81.5 $\pm$ 4.4 |84.3 $\pm$ 0.6   |
|2010             |72.4 $\pm$ 2.7   |79 $\pm$ 4.7    |77.1 $\pm$ 5   |61 $\pm$ 2.4     |82 $\pm$ 4.5   |84.8 $\pm$ 0.6   |
|2011             |75.7 $\pm$ 2.4   |84.8 $\pm$ 4    |76.5 $\pm$ 4.8 |62 $\pm$ 2.6     |85.2 $\pm$ 4   |85.3 $\pm$ 0.6   |
|2012             |75.5 $\pm$ 2.3   |75.8 $\pm$ 5    |76.1 $\pm$ 4.7 |61.7 $\pm$ 2.4   |84.3 $\pm$ 4.2 |85.9 $\pm$ 0.7   |
|2013             |77.6 $\pm$ 2.5   |80.5 $\pm$ 4.7  |76.3 $\pm$ 5   |62 $\pm$ 2.4     |84 $\pm$ 4.5   |86.2 $\pm$ 0.7   |
|2014             |75.5 $\pm$ 2.7   |81.4 $\pm$ 4.3  |77.4 $\pm$ 5.7 |64.7 $\pm$ 2.5   |84.2 $\pm$ 4   |86.7 $\pm$ 0.6   |
|2015             |77.4 $\pm$ 2.8   |84.5 $\pm$ 4.4  |77.5 $\pm$ 3.9 |62.1 $\pm$ 2.7   |85.8 $\pm$ 3.3 |87 $\pm$ 0.7     |
|2016             |77.8 $\pm$ 2.3   |76 $\pm$ 5.4    |81.5 $\pm$ 4   |65.4 $\pm$ 2.1   |81.1 $\pm$ 4.3 |86.2 $\pm$ 0.7   |
|2017             |78.6 $\pm$ 2.6   |78.6 $\pm$ 4.9  |77.6 $\pm$ 5.1 |68.1 $\pm$ 2.1   |83 $\pm$ 3.9   |87.1 $\pm$ 0.6   |
|2018             |81.5 $\pm$ 2.6   |82.8 $\pm$ 3.9  |80.1 $\pm$ 4   |68.5 $\pm$ 2.5   |83.6 $\pm$ 4   |87.6 $\pm$ 0.6   |
|Growth           |8.5 $\pm$ 3.5    |0.3 $\pm$ 5.3   |2.1 $\pm$ 5.7  |10.4 $\pm$ 3.6   |-1.1 $\pm$ 5.5 |3.3 $\pm$ 0.9    |
|Trend            |0.7 $\pm$ 0.2    |-0.1 $\pm$ 0.4  |0.2 $\pm$ 0.3  |1 $\pm$ 0.2      |0 $\pm$ 0.3    |0.3 $\pm$ 0.1    |
|Trend (Adj)      |0.7 $\pm$ 0.3*** |0 $\pm$ 0.5     |0.4 $\pm$ 0.5  |1.1 $\pm$ 0.3*** |0.1 $\pm$ 0.4  |0.4 $\pm$ 0.1*** |
|Sample Size/year |1,594            |444             |452            |2,207            |528            |19,466           |

Table: Percentage of male deaf Americans by race/ethnicity attaining a
High School diploma or equivalent.


#### Hearing Female
\newline \newline \newline

|Year             |African American |American Indian |Asian/PacIsl   |Hispanic       |Other          |White          |
|:----------------|:----------------|:---------------|:--------------|:--------------|:--------------|:--------------|
|2008             |87.1 $\pm$ 0.3   |85.4 $\pm$ 1.2  |87.1 $\pm$ 0.4 |65.8 $\pm$ 0.3 |90.1 $\pm$ 0.7 |94 $\pm$ 0.1   |
|2009             |87.3 $\pm$ 0.3   |85.9 $\pm$ 1.2  |87.7 $\pm$ 0.3 |65.8 $\pm$ 0.4 |91 $\pm$ 0.6   |94.1 $\pm$ 0.1 |
|2010             |88 $\pm$ 0.2     |84.8 $\pm$ 1    |87.6 $\pm$ 0.4 |67.2 $\pm$ 0.4 |90.8 $\pm$ 0.7 |94.3 $\pm$ 0.1 |
|2011             |88.1 $\pm$ 0.3   |87.1 $\pm$ 1    |87.3 $\pm$ 0.4 |67.5 $\pm$ 0.4 |91.3 $\pm$ 0.6 |94.5 $\pm$ 0.1 |
|2012             |88.6 $\pm$ 0.3   |86.3 $\pm$ 1.1  |88 $\pm$ 0.3   |68.7 $\pm$ 0.4 |91.5 $\pm$ 0.7 |94.7 $\pm$ 0.1 |
|2013             |88.9 $\pm$ 0.2   |86 $\pm$ 1.1    |88.3 $\pm$ 0.4 |69.1 $\pm$ 0.4 |91.9 $\pm$ 0.7 |94.7 $\pm$ 0.1 |
|2014             |89.1 $\pm$ 0.3   |86.6 $\pm$ 1    |88.6 $\pm$ 0.3 |69.9 $\pm$ 0.4 |92.2 $\pm$ 0.6 |94.9 $\pm$ 0.1 |
|2015             |89.7 $\pm$ 0.2   |86.2 $\pm$ 1.1  |88.7 $\pm$ 0.4 |70.7 $\pm$ 0.4 |93 $\pm$ 0.6   |94.9 $\pm$ 0.1 |
|2016             |89.9 $\pm$ 0.2   |88.1 $\pm$ 1    |88.8 $\pm$ 0.4 |71.6 $\pm$ 0.3 |92.1 $\pm$ 0.5 |95 $\pm$ 0.1   |
|2017             |90.2 $\pm$ 0.3   |86.5 $\pm$ 1.1  |89.3 $\pm$ 0.3 |73.2 $\pm$ 0.4 |93.3 $\pm$ 0.5 |95.2 $\pm$ 0.1 |
|2018             |90.4 $\pm$ 0.2   |86.4 $\pm$ 1.2  |90 $\pm$ 0.3   |74.1 $\pm$ 0.4 |93.9 $\pm$ 0.4 |95.3 $\pm$ 0.1 |
|Growth           |3.3 $\pm$ 0.4    |0.9 $\pm$ 1.7   |3 $\pm$ 0.5    |8.2 $\pm$ 0.5  |3.8 $\pm$ 0.8  |1.3 $\pm$ 0.1  |
|Trend            |0.3 $\pm$ 0      |0.2 $\pm$ 0.2   |0.3 $\pm$ 0.1  |0.8 $\pm$ 0.1  |0.3 $\pm$ 0.1  |0.1 $\pm$ 0    |
|Trend (Adj)      |0.4 $\pm$ 0      |0.2 $\pm$ 0.1   |0.3 $\pm$ 0    |0.9 $\pm$ 0.1  |0.3 $\pm$ 0.1  |0.1 $\pm$ 0    |
|Sample Size/year |84,384           |6,959           |47,237         |104,750        |13,296         |553,026        |

Table: Percentage of female hearing Americans by race/ethnicity attaining a
High School diploma or equivalent.

#### Hearing Male
\newline \newline \newline

|Year             |African American |American Indian |Asian/PacIsl   |Hispanic       |Other          |White          |
|:----------------|:----------------|:---------------|:--------------|:--------------|:--------------|:--------------|
|2008             |84.6 $\pm$ 0.4   |81 $\pm$ 1.7    |89.7 $\pm$ 0.4 |60.9 $\pm$ 0.4 |88.6 $\pm$ 0.8 |92.3 $\pm$ 0.1 |
|2009             |85.1 $\pm$ 0.4   |83 $\pm$ 1.3    |89.7 $\pm$ 0.4 |61.2 $\pm$ 0.4 |89.8 $\pm$ 0.8 |92.5 $\pm$ 0.1 |
|2010             |85.2 $\pm$ 0.3   |82.5 $\pm$ 1.3  |89.9 $\pm$ 0.3 |62.1 $\pm$ 0.5 |89.4 $\pm$ 0.7 |92.6 $\pm$ 0.1 |
|2011             |85.9 $\pm$ 0.3   |83.6 $\pm$ 1.2  |89.4 $\pm$ 0.4 |63.6 $\pm$ 0.4 |89.6 $\pm$ 0.7 |92.8 $\pm$ 0.1 |
|2012             |86.3 $\pm$ 0.3   |83.5 $\pm$ 1.3  |89.7 $\pm$ 0.3 |64.5 $\pm$ 0.4 |89.8 $\pm$ 0.7 |93 $\pm$ 0.1   |
|2013             |86.4 $\pm$ 0.3   |83.6 $\pm$ 1.3  |90.2 $\pm$ 0.3 |65 $\pm$ 0.4   |90.6 $\pm$ 0.6 |93 $\pm$ 0.1   |
|2014             |87.3 $\pm$ 0.3   |83.7 $\pm$ 1.2  |90.1 $\pm$ 0.3 |65.8 $\pm$ 0.4 |90.8 $\pm$ 0.7 |93.2 $\pm$ 0.1 |
|2015             |87.2 $\pm$ 0.3   |84 $\pm$ 1.4    |90.6 $\pm$ 0.3 |66.3 $\pm$ 0.4 |91.7 $\pm$ 0.6 |93.2 $\pm$ 0.1 |
|2016             |87.5 $\pm$ 0.3   |83.3 $\pm$ 1.1  |90.4 $\pm$ 0.3 |67.4 $\pm$ 0.4 |91 $\pm$ 0.6   |93.2 $\pm$ 0.1 |
|2017             |88.3 $\pm$ 0.3   |84.6 $\pm$ 1.2  |91.1 $\pm$ 0.3 |69.6 $\pm$ 0.4 |92.3 $\pm$ 0.6 |93.6 $\pm$ 0.1 |
|2018             |88.7 $\pm$ 0.3   |84.2 $\pm$ 1.4  |91.5 $\pm$ 0.3 |70.4 $\pm$ 0.4 |91.8 $\pm$ 0.6 |93.7 $\pm$ 0.1 |
|Growth           |4.1 $\pm$ 0.5    |3.2 $\pm$ 2.2   |1.8 $\pm$ 0.5  |9.5 $\pm$ 0.6  |3.2 $\pm$ 1    |1.4 $\pm$ 0.1  |
|Trend            |0.4 $\pm$ 0      |0.2 $\pm$ 0.1   |0.2 $\pm$ 0.1  |0.9 $\pm$ 0.1  |0.3 $\pm$ 0.1  |0.1 $\pm$ 0    |
|Trend (Adj)      |0.4 $\pm$ 0      |0.2 $\pm$ 0.1   |0.2 $\pm$ 0    |0.9 $\pm$ 0.1  |0.3 $\pm$ 0.1  |0.1 $\pm$ 0    |
|Sample Size/year |65,825           |6,099           |39,742         |97,647         |11,699         |520,460        |

Table: Percentage of male hearing Americans by race/ethnicity attaining a
High School diploma or equivalent.



# Associates

\newline \newline \newline

|Year             |Deaf             |Hearing        |
|:----------------|:----------------|:--------------|
|2008             |23.5 $\pm$ 0.5   |38.7 $\pm$ 0.1 |
|2009             |23.8 $\pm$ 0.5   |38.9 $\pm$ 0.2 |
|2010             |23.8 $\pm$ 0.5   |39.1 $\pm$ 0.1 |
|2011             |24.2 $\pm$ 0.5   |39.6 $\pm$ 0.2 |
|2012             |24.2 $\pm$ 0.5   |40.3 $\pm$ 0.1 |
|2013             |26 $\pm$ 0.5     |40.7 $\pm$ 0.2 |
|2014             |26.1 $\pm$ 0.5   |41.2 $\pm$ 0.2 |
|2015             |26.8 $\pm$ 0.6   |41.8 $\pm$ 0.2 |
|2016             |27 $\pm$ 0.5     |42.5 $\pm$ 0.2 |
|2017             |27.7 $\pm$ 0.7   |43.3 $\pm$ 0.2 |
|2018             |28.6 $\pm$ 0.6   |44 $\pm$ 0.2   |
|Growth           |5.1 $\pm$ 0.7    |5.3 $\pm$ 0.2  |
|Trend            |0.5 $\pm$ 0.1    |0.5 $\pm$ 0.1  |
|Trend (Adj)      |0.7 $\pm$ 0.1*** |0.5 $\pm$ 0    |
|Sample Size/year |38,892           |1,551,126      |

Table: Associates completion from 2008-2016.

\newline \newline \newline
![Associates completion over time. Error bars are approximate 95% confidence intervals.](figure/CCtotFig-1.png)
\newline \newline \newline
![Change in Associates completion over time. Error bars are approximate 95% confidence intervals.](figure/CCtotFigChange-1.png)

### Ages 25-34


\newline \newline \newline

|Year             |25-34            |35-44            |45-54            |55-64            |
|:----------------|:----------------|:----------------|:----------------|:----------------|
|2008             |20 $\pm$ 1.7     |22.9 $\pm$ 1.4   |22.6 $\pm$ 0.8   |25.2 $\pm$ 0.7   |
|2009             |23.2 $\pm$ 1.9   |22.5 $\pm$ 1.4   |22.4 $\pm$ 0.9   |25.3 $\pm$ 0.7   |
|2010             |22.6 $\pm$ 1.9   |24.2 $\pm$ 1.5   |21.6 $\pm$ 0.9   |25.3 $\pm$ 0.7   |
|2011             |22.5 $\pm$ 1.7   |25.6 $\pm$ 1.6   |21.7 $\pm$ 1     |25.6 $\pm$ 0.7   |
|2012             |23.9 $\pm$ 1.9   |24.6 $\pm$ 1.6   |21.8 $\pm$ 0.9   |25.5 $\pm$ 0.7   |
|2013             |24.5 $\pm$ 2     |27.2 $\pm$ 1.6   |24.6 $\pm$ 0.9   |26.7 $\pm$ 0.7   |
|2014             |25.5 $\pm$ 1.8   |29.1 $\pm$ 1.8   |23.9 $\pm$ 0.9   |26.6 $\pm$ 0.6   |
|2015             |25.8 $\pm$ 1.8   |29.6 $\pm$ 1.5   |25.7 $\pm$ 0.9   |26.8 $\pm$ 0.8   |
|2016             |26.7 $\pm$ 1.6   |28.9 $\pm$ 1.6   |26.6 $\pm$ 1     |26.6 $\pm$ 0.7   |
|2017             |27.5 $\pm$ 1.9   |30.1 $\pm$ 1.8   |28 $\pm$ 1.1     |26.9 $\pm$ 0.7   |
|2018             |29.5 $\pm$ 2     |31.9 $\pm$ 1.7   |28.9 $\pm$ 1.3   |27.3 $\pm$ 0.9   |
|Growth           |9.5 $\pm$ 2.7    |9 $\pm$ 2.2      |6.3 $\pm$ 1.5    |2.1 $\pm$ 1.1    |
|Trend            |0.8 $\pm$ 0.2    |0.9 $\pm$ 0.1    |0.6 $\pm$ 0.3    |0.2 $\pm$ 0      |
|Trend (Adj)      |0.8 $\pm$ 0.2*** |0.9 $\pm$ 0.2*** |0.7 $\pm$ 0.1*** |0.2 $\pm$ 0.1*** |
|Sample Size/year |3,180            |4,868            |10,724           |20,119           |

Table: Percentage of deaf Americans by age category attaining a
Associates diploma or equivalent.



\newline \newline \newline

|Year             |25-34          |35-44          |45-54          |55-64          |
|:----------------|:--------------|:--------------|:--------------|:--------------|
|2008             |38.6 $\pm$ 0.3 |40.2 $\pm$ 0.2 |37.6 $\pm$ 0.2 |38.2 $\pm$ 0.2 |
|2009             |39.8 $\pm$ 0.3 |40.2 $\pm$ 0.2 |37.3 $\pm$ 0.2 |38.2 $\pm$ 0.2 |
|2010             |40.3 $\pm$ 0.3 |40.6 $\pm$ 0.2 |37.1 $\pm$ 0.2 |38.5 $\pm$ 0.2 |
|2011             |41.1 $\pm$ 0.3 |41.4 $\pm$ 0.2 |37.4 $\pm$ 0.2 |38.4 $\pm$ 0.2 |
|2012             |41.9 $\pm$ 0.3 |42.4 $\pm$ 0.2 |38.1 $\pm$ 0.2 |38.7 $\pm$ 0.2 |
|2013             |42.4 $\pm$ 0.3 |42.8 $\pm$ 0.2 |38.9 $\pm$ 0.2 |38.7 $\pm$ 0.2 |
|2014             |43.2 $\pm$ 0.3 |43.5 $\pm$ 0.2 |39.4 $\pm$ 0.2 |38.6 $\pm$ 0.2 |
|2015             |43.9 $\pm$ 0.3 |44.2 $\pm$ 0.2 |40.3 $\pm$ 0.2 |38.5 $\pm$ 0.2 |
|2016             |44.8 $\pm$ 0.3 |45.1 $\pm$ 0.2 |41.3 $\pm$ 0.2 |38.7 $\pm$ 0.2 |
|2017             |45.6 $\pm$ 0.3 |46 $\pm$ 0.2   |42.4 $\pm$ 0.2 |38.9 $\pm$ 0.2 |
|2018             |46.1 $\pm$ 0.3 |46.9 $\pm$ 0.3 |43.3 $\pm$ 0.2 |39.2 $\pm$ 0.2 |
|Growth           |7.6 $\pm$ 0.4  |6.7 $\pm$ 0.3  |5.7 $\pm$ 0.3  |1 $\pm$ 0.3    |
|Trend            |0.7 $\pm$ 0    |0.7 $\pm$ 0.1  |0.6 $\pm$ 0.2  |0.1 $\pm$ 0    |
|Trend (Adj)      |0.7 $\pm$ 0    |0.7 $\pm$ 0    |0.6 $\pm$ 0.1  |0.1 $\pm$ 0.1  |
|Sample Size/year |350,159        |362,410        |424,763        |413,794        |

Table: Percentage of hearing Americans by age category attaining a
Associates diploma or equivalent.

\newline \newline \newline


<!-- Table: Differences in growth and trends between deaf and hearing -->
<!-- Americans for each age category. Positive Differences indicate faster -->
<!-- growth for deaf Americans. -->


\newline \newline \newline
![Associates completion by age category over time. Error bars are approximate 95% confidence intervals.](figure/CCByAgeCatFig-1.png)
\newline \newline \newline
![Change in Associates completion by age category over time. Error bars are approximate 95% confidence intervals.](figure/CCByAgeCatFigChange-1.png)

### By Gender
\newline \newline \newline

|Year             |Female           |Male             |
|:----------------|:----------------|:----------------|
|2008             |24.2 $\pm$ 0.8   |23.1 $\pm$ 0.6   |
|2009             |24.9 $\pm$ 0.8   |23.2 $\pm$ 0.7   |
|2010             |25 $\pm$ 0.9     |23.1 $\pm$ 0.7   |
|2011             |25.9 $\pm$ 1     |23.2 $\pm$ 0.7   |
|2012             |25.7 $\pm$ 0.9   |23.2 $\pm$ 0.6   |
|2013             |28.6 $\pm$ 0.9   |24.4 $\pm$ 0.7   |
|2014             |28.3 $\pm$ 0.8   |24.8 $\pm$ 0.6   |
|2015             |28.9 $\pm$ 0.9   |25.5 $\pm$ 0.7   |
|2016             |29.3 $\pm$ 0.8   |25.5 $\pm$ 0.7   |
|2017             |30.2 $\pm$ 0.9   |26.2 $\pm$ 0.8   |
|2018             |31.2 $\pm$ 1     |27 $\pm$ 0.7     |
|Growth           |7 $\pm$ 1.3      |3.9 $\pm$ 1      |
|Trend            |0.7 $\pm$ 0.1    |0.4 $\pm$ 0.1    |
|Trend (Adj)      |0.7 $\pm$ 0.1*** |0.6 $\pm$ 0.1*** |
|Sample Size/year |14,202           |24,690           |

Table: Percentage of deaf Americans by gender attaining a
Associates diploma or equivalent.



\newline \newline \newline

|Year             |Female         |Male           |
|:----------------|:--------------|:--------------|
|2008             |40 $\pm$ 0.1   |37.3 $\pm$ 0.2 |
|2009             |40.5 $\pm$ 0.2 |37.2 $\pm$ 0.2 |
|2010             |40.9 $\pm$ 0.2 |37.2 $\pm$ 0.2 |
|2011             |41.5 $\pm$ 0.2 |37.5 $\pm$ 0.2 |
|2012             |42.5 $\pm$ 0.2 |37.9 $\pm$ 0.2 |
|2013             |43 $\pm$ 0.2   |38.2 $\pm$ 0.2 |
|2014             |43.7 $\pm$ 0.2 |38.5 $\pm$ 0.2 |
|2015             |44.4 $\pm$ 0.2 |38.9 $\pm$ 0.2 |
|2016             |45.4 $\pm$ 0.2 |39.5 $\pm$ 0.2 |
|2017             |46.4 $\pm$ 0.2 |40 $\pm$ 0.2   |
|2018             |47 $\pm$ 0.2   |40.8 $\pm$ 0.2 |
|Growth           |7 $\pm$ 0.2    |3.5 $\pm$ 0.2  |
|Trend            |0.7 $\pm$ 0.1  |0.3 $\pm$ 0.1  |
|Trend (Adj)      |0.7 $\pm$ 0    |0.3 $\pm$ 0.1  |
|Sample Size/year |809,653        |741,472        |

Table: Percentage of hearing Americans by gender attaining a
Associates diploma or equivalent.

\newline \newline \newline


<!-- Table: Differences in growth and trends between deaf and hearing -->
<!-- Americans for males and females. Positive Differences indicate faster -->
<!-- growth for deaf Americans. -->



\newline \newline \newline
![Associates completion by gender over time. Error bars are approximate 95% confidence intervals.](figure/CCSexFig-1.png)
\newline \newline \newline
![Change in Associates completion by gender over time. Error bars are approximate 95% confidence intervals.](figure/CCSexFigChange-1.png)


### By Race/Ethnicity

\newline \newline \newline

|Year             |African American |American Indian |Asian/PacIsl   |Hispanic         |Other          |White            |
|:----------------|:----------------|:---------------|:--------------|:----------------|:--------------|:----------------|
|2008             |15.6 $\pm$ 1.7   |20.2 $\pm$ 4.3  |36.7 $\pm$ 4.4 |14.5 $\pm$ 1.4   |27.7 $\pm$ 4.1 |25.4 $\pm$ 0.6   |
|2009             |15.4 $\pm$ 1.7   |21.2 $\pm$ 4.3  |36.7 $\pm$ 3.7 |15.2 $\pm$ 1.8   |24.4 $\pm$ 3.9 |25.7 $\pm$ 0.6   |
|2010             |16.7 $\pm$ 1.4   |19.6 $\pm$ 4.3  |34.4 $\pm$ 3.3 |14.4 $\pm$ 1.4   |27.1 $\pm$ 3.7 |25.7 $\pm$ 0.6   |
|2011             |13.8 $\pm$ 1.6   |17.6 $\pm$ 3.7  |38.6 $\pm$ 4.5 |14.7 $\pm$ 1.3   |26 $\pm$ 3.9   |26.5 $\pm$ 0.7   |
|2012             |16.1 $\pm$ 1.4   |18.9 $\pm$ 3.7  |35.5 $\pm$ 4.1 |14.2 $\pm$ 1.4   |24.8 $\pm$ 3.8 |26.5 $\pm$ 0.6   |
|2013             |17.3 $\pm$ 1.8   |24.4 $\pm$ 4.5  |37.9 $\pm$ 4.1 |15.5 $\pm$ 1.5   |26.9 $\pm$ 3.4 |28.3 $\pm$ 0.6   |
|2014             |17 $\pm$ 1.6     |22.7 $\pm$ 4    |36.6 $\pm$ 3.9 |16.8 $\pm$ 1.5   |26.2 $\pm$ 3.5 |28.4 $\pm$ 0.6   |
|2015             |17.9 $\pm$ 1.7   |23.8 $\pm$ 4.8  |37.8 $\pm$ 4   |16 $\pm$ 1.3     |25.2 $\pm$ 3.4 |29.5 $\pm$ 0.7   |
|2016             |20.4 $\pm$ 1.5   |16.4 $\pm$ 3.7  |38 $\pm$ 3.8   |17.3 $\pm$ 1.4   |29.1 $\pm$ 3.8 |29.3 $\pm$ 0.7   |
|2017             |18.8 $\pm$ 1.8   |16.9 $\pm$ 3.7  |40.5 $\pm$ 3.9 |18.8 $\pm$ 1.7   |29.4 $\pm$ 3.6 |30.1 $\pm$ 0.8   |
|2018             |22.4 $\pm$ 1.9   |21.2 $\pm$ 3.8  |39.9 $\pm$ 3.4 |20.5 $\pm$ 1.3   |32.4 $\pm$ 4.3 |30.5 $\pm$ 0.7   |
|Growth           |6.8 $\pm$ 2.5    |0.9 $\pm$ 5.7   |3.1 $\pm$ 5.6  |6 $\pm$ 1.9      |4.7 $\pm$ 5.9  |5.1 $\pm$ 0.9    |
|Trend            |0.6 $\pm$ 0.3    |-0.1 $\pm$ 0.4  |0.4 $\pm$ 0.2  |0.6 $\pm$ 0.3    |0.4 $\pm$ 0.4  |0.6 $\pm$ 0.1    |
|Trend (Adj)      |0.7 $\pm$ 0.2*** |0.1 $\pm$ 0.5   |0.4 $\pm$ 0.4  |0.6 $\pm$ 0.2*** |0.5 $\pm$ 0.4* |0.7 $\pm$ 0.1*** |
|Sample Size/year |3,014            |720             |850            |3,767            |870            |29,671           |

Table: Percentage of deaf Americans by race/ethnicity attaining a
Associates diploma or equivalent.



\newline \newline \newline

|Year             |African American |American Indian |Asian/PacIsl   |Hispanic       |Other          |White          |
|:----------------|:----------------|:---------------|:--------------|:--------------|:--------------|:--------------|
|2008             |27.6 $\pm$ 0.3   |23.1 $\pm$ 1.1  |59.7 $\pm$ 0.5 |19.3 $\pm$ 0.2 |38.1 $\pm$ 0.8 |43.2 $\pm$ 0.1 |
|2009             |27.7 $\pm$ 0.3   |23.3 $\pm$ 1    |59.5 $\pm$ 0.5 |19 $\pm$ 0.3   |39.2 $\pm$ 0.8 |43.7 $\pm$ 0.1 |
|2010             |28.1 $\pm$ 0.2   |24 $\pm$ 1      |59.3 $\pm$ 0.5 |19.6 $\pm$ 0.3 |41 $\pm$ 0.8   |44 $\pm$ 0.2   |
|2011             |28.9 $\pm$ 0.3   |24.4 $\pm$ 1    |59.6 $\pm$ 0.5 |20 $\pm$ 0.3   |40.5 $\pm$ 0.7 |44.5 $\pm$ 0.2 |
|2012             |29.3 $\pm$ 0.3   |24.5 $\pm$ 0.9  |60.3 $\pm$ 0.5 |20.9 $\pm$ 0.3 |42.4 $\pm$ 0.8 |45.3 $\pm$ 0.1 |
|2013             |29.7 $\pm$ 0.4   |24.4 $\pm$ 1    |61.4 $\pm$ 0.4 |21 $\pm$ 0.3   |43.5 $\pm$ 0.9 |45.8 $\pm$ 0.2 |
|2014             |30.4 $\pm$ 0.3   |24.3 $\pm$ 1    |61.2 $\pm$ 0.5 |21.7 $\pm$ 0.3 |43.7 $\pm$ 0.8 |46.5 $\pm$ 0.2 |
|2015             |31.1 $\pm$ 0.3   |24.7 $\pm$ 1.2  |62 $\pm$ 0.5   |22.2 $\pm$ 0.3 |45.7 $\pm$ 0.7 |47 $\pm$ 0.2   |
|2016             |31.9 $\pm$ 0.4   |25.1 $\pm$ 1    |63.1 $\pm$ 0.5 |22.9 $\pm$ 0.3 |45.4 $\pm$ 0.7 |47.9 $\pm$ 0.2 |
|2017             |32.8 $\pm$ 0.3   |26.1 $\pm$ 1.2  |64.1 $\pm$ 0.4 |23.9 $\pm$ 0.3 |47.1 $\pm$ 0.7 |48.7 $\pm$ 0.2 |
|2018             |33.5 $\pm$ 0.4   |25.3 $\pm$ 1    |65.3 $\pm$ 0.4 |24.9 $\pm$ 0.3 |47.9 $\pm$ 0.8 |49.4 $\pm$ 0.2 |
|Growth           |5.8 $\pm$ 0.5    |2.2 $\pm$ 1.5   |5.6 $\pm$ 0.6  |5.6 $\pm$ 0.4  |9.8 $\pm$ 1.1  |6.1 $\pm$ 0.2  |
|Trend            |0.6 $\pm$ 0.1    |0.2 $\pm$ 0.1   |0.6 $\pm$ 0.2  |0.6 $\pm$ 0.1  |1 $\pm$ 0.1    |0.6 $\pm$ 0.1  |
|Trend (Adj)      |0.6 $\pm$ 0      |0.2 $\pm$ 0.1   |0.6 $\pm$ 0.1  |0.5 $\pm$ 0    |0.9 $\pm$ 0.1  |0.6 $\pm$ 0.1  |
|Sample Size/year |150,209          |13,058          |86,979         |202,398        |24,996         |1,073,486      |

Table: Percentage of hearing Americans by race/ethnicity attaining a
Associates diploma or equivalent.

\newline \newline \newline


<!-- Table: Differences in growth and trends between deaf and hearing -->
<!-- Americans for each race/ethnicity. Positive Differences indicate faster -->
<!-- growth for deaf Americans. -->


\newline \newline \newline
![Associates completion by race/ethnicity over time. Error bars are approximate 95% confidence intervals.](figure/CCRaceFig-1.png)
\newline \newline \newline
![Change in Associates completion by race/ethnicity over time. Error bars are approximate 95% confidence intervals.](figure/CCRaceFigChange-1.png)

### By Race and Gender
#### Deaf Female
\newline \newline \newline

|Year             |African American |American Indian |Asian/PacIsl   |Hispanic         |Other          |White            |
|:----------------|:----------------|:---------------|:--------------|:----------------|:--------------|:----------------|
|2008             |15.5 $\pm$ 2     |17.3 $\pm$ 5.9  |37.2 $\pm$ 5.8 |14.7 $\pm$ 1.9   |26.6 $\pm$ 5.5 |27 $\pm$ 1       |
|2009             |16 $\pm$ 2.1     |20.2 $\pm$ 7.5  |33.2 $\pm$ 5.8 |15.2 $\pm$ 2.5   |23.4 $\pm$ 4.8 |27.9 $\pm$ 1     |
|2010             |19.4 $\pm$ 2.4   |23.3 $\pm$ 6.6  |34.9 $\pm$ 5.2 |14.1 $\pm$ 1.8   |25.8 $\pm$ 6.1 |27.5 $\pm$ 1     |
|2011             |15 $\pm$ 2.4     |17.1 $\pm$ 6.2  |38.2 $\pm$ 5.7 |13.8 $\pm$ 2.1   |27 $\pm$ 6.7   |29.5 $\pm$ 1.2   |
|2012             |18.2 $\pm$ 2.3   |25.3 $\pm$ 8.1  |35 $\pm$ 5.6   |13.3 $\pm$ 2     |24.6 $\pm$ 7   |28.9 $\pm$ 1     |
|2013             |19.2 $\pm$ 2.7   |21.8 $\pm$ 5.3  |38.1 $\pm$ 5.9 |16.1 $\pm$ 2     |25.8 $\pm$ 6   |32.2 $\pm$ 1.1   |
|2014             |19.8 $\pm$ 2.5   |23.9 $\pm$ 5.7  |38.1 $\pm$ 6.1 |18.4 $\pm$ 2.3   |29.4 $\pm$ 5.8 |31.2 $\pm$ 1.1   |
|2015             |19.1 $\pm$ 2.2   |20.1 $\pm$ 6.5  |36 $\pm$ 6.5   |15.7 $\pm$ 1.9   |26.7 $\pm$ 5.4 |33.2 $\pm$ 1.1   |
|2016             |23.2 $\pm$ 2.2   |19.6 $\pm$ 6    |33.9 $\pm$ 4.8 |18.9 $\pm$ 2.2   |31.9 $\pm$ 6   |32.5 $\pm$ 1     |
|2017             |19.7 $\pm$ 2.6   |16.3 $\pm$ 5.5  |40.5 $\pm$ 5.9 |18.1 $\pm$ 2.1   |31.6 $\pm$ 5.7 |34 $\pm$ 1.2     |
|2018             |23.4 $\pm$ 2.7   |25.7 $\pm$ 6    |40.6 $\pm$ 5   |19.2 $\pm$ 2     |39.8 $\pm$ 7.6 |34.4 $\pm$ 1.3   |
|Growth           |7.9 $\pm$ 3.4    |8.4 $\pm$ 8.4   |3.4 $\pm$ 7.6  |4.6 $\pm$ 2.8    |13.1 $\pm$ 9.4 |7.4 $\pm$ 1.7    |
|Trend            |0.7 $\pm$ 0.3    |0.2 $\pm$ 0.8   |0.4 $\pm$ 0.5  |0.5 $\pm$ 0.2    |1 $\pm$ 0.6    |0.8 $\pm$ 0.1    |
|Trend (Adj)      |0.7 $\pm$ 0.3*** |0.2 $\pm$ 0.9   |0 $\pm$ 0.6    |0.5 $\pm$ 0.2*** |0.7 $\pm$ 0.7. |0.8 $\pm$ 0.1*** |
|Sample Size/year |1,420            |276             |398            |1,560            |342            |10,205           |

Table: Percentage of female deaf Americans by race/ethnicity attaining a
Associates diploma or equivalent.

#### Deaf Male
\newline \newline \newline

|Year             |African American |American Indian |Asian/PacIsl   |Hispanic         |Other          |White            |
|:----------------|:----------------|:---------------|:--------------|:----------------|:--------------|:----------------|
|2008             |15.7 $\pm$ 2.6   |22.4 $\pm$ 5.7  |36.3 $\pm$ 5.2 |14.4 $\pm$ 2     |28.5 $\pm$ 5.8 |24.5 $\pm$ 0.7   |
|2009             |14.8 $\pm$ 2.3   |21.8 $\pm$ 5.5  |39.5 $\pm$ 5   |15.2 $\pm$ 1.9   |25.2 $\pm$ 5.4 |24.5 $\pm$ 0.7   |
|2010             |14.4 $\pm$ 1.6   |17.4 $\pm$ 5.2  |33.9 $\pm$ 4.6 |14.6 $\pm$ 1.9   |27.8 $\pm$ 4.7 |24.8 $\pm$ 0.8   |
|2011             |12.8 $\pm$ 1.9   |17.9 $\pm$ 4.4  |38.9 $\pm$ 6.3 |15.3 $\pm$ 1.9   |25.3 $\pm$ 5.7 |24.9 $\pm$ 0.8   |
|2012             |14.4 $\pm$ 2     |14.4 $\pm$ 4.6  |36 $\pm$ 5.4   |14.7 $\pm$ 1.8   |24.9 $\pm$ 4   |25.2 $\pm$ 0.8   |
|2013             |15.6 $\pm$ 2.6   |26.3 $\pm$ 7    |37.8 $\pm$ 6.1 |15.2 $\pm$ 2     |27.6 $\pm$ 4.9 |26.2 $\pm$ 0.8   |
|2014             |14.6 $\pm$ 2     |21.9 $\pm$ 5.6  |35.4 $\pm$ 5.1 |15.8 $\pm$ 1.9   |23.6 $\pm$ 4.7 |26.9 $\pm$ 0.7   |
|2015             |16.8 $\pm$ 2.3   |26.7 $\pm$ 6.5  |39.2 $\pm$ 5   |16.2 $\pm$ 1.6   |24.4 $\pm$ 4.9 |27.4 $\pm$ 0.8   |
|2016             |18.1 $\pm$ 2.2   |14.2 $\pm$ 4.2  |41.5 $\pm$ 5.1 |16.1 $\pm$ 1.7   |27.4 $\pm$ 4.8 |27.5 $\pm$ 0.8   |
|2017             |18.1 $\pm$ 2.4   |17.3 $\pm$ 4.6  |40.4 $\pm$ 4.6 |19.3 $\pm$ 2.1   |27.6 $\pm$ 4.6 |27.9 $\pm$ 1     |
|2018             |21.6 $\pm$ 2.6   |18.4 $\pm$ 5    |39.1 $\pm$ 4.9 |21.5 $\pm$ 1.8   |27.7 $\pm$ 4.7 |28.2 $\pm$ 0.9   |
|Growth           |5.9 $\pm$ 3.7    |-4 $\pm$ 7.6    |2.8 $\pm$ 7.1  |7 $\pm$ 2.7      |-0.8 $\pm$ 7.5 |3.7 $\pm$ 1.1    |
|Trend            |0.6 $\pm$ 0.4    |-0.3 $\pm$ 0.5  |0.4 $\pm$ 0.4  |0.5 $\pm$ 0.4    |0 $\pm$ 0.3    |0.4 $\pm$ 0.1    |
|Trend (Adj)      |0.8 $\pm$ 0.3*** |-0.3 $\pm$ 0.6  |0.1 $\pm$ 0.6  |0.6 $\pm$ 0.2*** |-0.2 $\pm$ 0.6 |0.7 $\pm$ 0.1*** |
|Sample Size/year |1,594            |444             |452            |2,207            |528            |19,466           |

Table: Percentage of male deaf Americans by race/ethnicity attaining a
Associates diploma or equivalent.


#### Hearing Female
\newline \newline \newline

|Year             |African American |American Indian |Asian/PacIsl   |Hispanic       |Other          |White          |
|:----------------|:----------------|:---------------|:--------------|:--------------|:--------------|:--------------|
|2008             |29.9 $\pm$ 0.4   |26.6 $\pm$ 1.4  |58.2 $\pm$ 0.6 |21.2 $\pm$ 0.3 |40.1 $\pm$ 0.9 |44.4 $\pm$ 0.2 |
|2009             |30.3 $\pm$ 0.4   |25.1 $\pm$ 1.3  |58.3 $\pm$ 0.6 |21.1 $\pm$ 0.3 |41 $\pm$ 1.2   |45.1 $\pm$ 0.2 |
|2010             |31.1 $\pm$ 0.3   |26 $\pm$ 1.5    |58.1 $\pm$ 0.6 |21.9 $\pm$ 0.3 |42.5 $\pm$ 1.2 |45.7 $\pm$ 0.2 |
|2011             |31.8 $\pm$ 0.4   |27.5 $\pm$ 1.2  |58.6 $\pm$ 0.6 |22.2 $\pm$ 0.4 |42.2 $\pm$ 1   |46.5 $\pm$ 0.2 |
|2012             |32.5 $\pm$ 0.4   |28.2 $\pm$ 1.4  |59.8 $\pm$ 0.5 |23.4 $\pm$ 0.3 |44.7 $\pm$ 1.1 |47.5 $\pm$ 0.2 |
|2013             |33.3 $\pm$ 0.4   |27.3 $\pm$ 1.2  |60.6 $\pm$ 0.6 |23.4 $\pm$ 0.3 |45.9 $\pm$ 1   |48.2 $\pm$ 0.2 |
|2014             |33.7 $\pm$ 0.4   |27.1 $\pm$ 1.4  |60.6 $\pm$ 0.5 |24.2 $\pm$ 0.4 |46.6 $\pm$ 1.1 |49.1 $\pm$ 0.2 |
|2015             |34.5 $\pm$ 0.4   |27.8 $\pm$ 1.5  |61.3 $\pm$ 0.5 |24.9 $\pm$ 0.3 |48.8 $\pm$ 1   |49.8 $\pm$ 0.2 |
|2016             |35.4 $\pm$ 0.5   |27.9 $\pm$ 1.3  |62.5 $\pm$ 0.6 |25.5 $\pm$ 0.3 |47.8 $\pm$ 1   |51 $\pm$ 0.2   |
|2017             |36.7 $\pm$ 0.4   |28.9 $\pm$ 1.7  |63.4 $\pm$ 0.5 |26.9 $\pm$ 0.3 |50.3 $\pm$ 1   |52 $\pm$ 0.2   |
|2018             |37.3 $\pm$ 0.5   |28.9 $\pm$ 1.6  |64.8 $\pm$ 0.5 |27.8 $\pm$ 0.4 |50.5 $\pm$ 1   |52.6 $\pm$ 0.2 |
|Growth           |7.4 $\pm$ 0.6    |2.3 $\pm$ 2.1   |6.6 $\pm$ 0.7  |6.5 $\pm$ 0.5  |10.4 $\pm$ 1.3 |8.2 $\pm$ 0.3  |
|Trend            |0.7 $\pm$ 0.1    |0.3 $\pm$ 0.1   |0.7 $\pm$ 0.2  |0.7 $\pm$ 0.1  |1.1 $\pm$ 0.1  |0.8 $\pm$ 0    |
|Trend (Adj)      |0.8 $\pm$ 0.1    |0.3 $\pm$ 0.1   |0.7 $\pm$ 0.1  |0.7 $\pm$ 0    |1.1 $\pm$ 0.1  |0.9 $\pm$ 0    |
|Sample Size/year |84,384           |6,959           |47,237         |104,750        |13,296         |553,026        |

Table: Percentage of female hearing Americans by race/ethnicity attaining a
Associates diploma or equivalent.

#### Hearing Male
\newline \newline \newline

|Year             |African American |American Indian |Asian/PacIsl   |Hispanic       |Other          |White          |
|:----------------|:----------------|:---------------|:--------------|:--------------|:--------------|:--------------|
|2008             |24.9 $\pm$ 0.4   |19 $\pm$ 1.4    |61.4 $\pm$ 0.6 |17.5 $\pm$ 0.3 |35.9 $\pm$ 1.1 |42.1 $\pm$ 0.2 |
|2009             |24.5 $\pm$ 0.4   |21.1 $\pm$ 1.2  |60.7 $\pm$ 0.6 |17 $\pm$ 0.3   |37.3 $\pm$ 1   |42.2 $\pm$ 0.2 |
|2010             |24.3 $\pm$ 0.4   |21.6 $\pm$ 1.3  |60.6 $\pm$ 0.6 |17.3 $\pm$ 0.3 |39.4 $\pm$ 1.1 |42.2 $\pm$ 0.2 |
|2011             |25.2 $\pm$ 0.4   |20.9 $\pm$ 1.4  |60.8 $\pm$ 0.6 |17.7 $\pm$ 0.3 |38.5 $\pm$ 1.1 |42.5 $\pm$ 0.2 |
|2012             |25.3 $\pm$ 0.4   |20.3 $\pm$ 1.4  |61 $\pm$ 0.7   |18.4 $\pm$ 0.4 |39.9 $\pm$ 1.1 |43 $\pm$ 0.2   |
|2013             |25.4 $\pm$ 0.5   |21.3 $\pm$ 1.5  |62.4 $\pm$ 0.5 |18.6 $\pm$ 0.4 |40.7 $\pm$ 1.3 |43.4 $\pm$ 0.2 |
|2014             |26.4 $\pm$ 0.4   |21 $\pm$ 1.2    |61.8 $\pm$ 0.6 |19.1 $\pm$ 0.3 |40.4 $\pm$ 1   |43.8 $\pm$ 0.2 |
|2015             |27 $\pm$ 0.4     |21.3 $\pm$ 1.5  |62.8 $\pm$ 0.7 |19.6 $\pm$ 0.3 |42.4 $\pm$ 1.1 |44.1 $\pm$ 0.2 |
|2016             |27.8 $\pm$ 0.4   |22 $\pm$ 1.5    |63.9 $\pm$ 0.6 |20.2 $\pm$ 0.3 |42.7 $\pm$ 1.1 |44.8 $\pm$ 0.2 |
|2017             |28.1 $\pm$ 0.5   |23.1 $\pm$ 1.6  |64.9 $\pm$ 0.5 |20.9 $\pm$ 0.4 |43.5 $\pm$ 1.1 |45.3 $\pm$ 0.2 |
|2018             |28.9 $\pm$ 0.5   |21.2 $\pm$ 1.5  |65.9 $\pm$ 0.6 |22.1 $\pm$ 0.3 |45 $\pm$ 1.1   |46 $\pm$ 0.2   |
|Growth           |4 $\pm$ 0.6      |2.2 $\pm$ 2.1   |4.5 $\pm$ 0.8  |4.6 $\pm$ 0.4  |9.1 $\pm$ 1.6  |4 $\pm$ 0.3    |
|Trend            |0.4 $\pm$ 0.1    |0.2 $\pm$ 0.2   |0.5 $\pm$ 0.2  |0.5 $\pm$ 0.1  |0.8 $\pm$ 0.1  |0.4 $\pm$ 0.1  |
|Trend (Adj)      |0.4 $\pm$ 0.1    |0.2 $\pm$ 0.1   |0.5 $\pm$ 0.1  |0.4 $\pm$ 0.1  |0.7 $\pm$ 0.1  |0.4 $\pm$ 0.1  |
|Sample Size/year |65,825           |6,099           |39,742         |97,647         |11,699         |520,460        |

Table: Percentage of male hearing Americans by race/ethnicity attaining a
Associates diploma or equivalent.

<!-- #### Deaf Hearing Differences by Race: Female -->
\newline \newline \newli0ne


<!-- Table: Differences in growth and trends between female deaf and hearing -->
<!-- Americans for each race/ethicity category. Positive Differences indicate faster -->
<!-- growth for deaf Americans. -->

<!-- #### Deaf Hearing Differences by Race: Male -->
\newline \newline \newline


<!-- Table: Differences in growth and trends between male deaf and hearing -->
<!-- Americans for each race/ethicity category. Positive Differences indicate faster -->
<!-- growth for deaf Americans. -->



\newline \newline \newline
![Female Associates completion by race/ethnicity over time. Error bars are approximate 95% confidence intervals.](figure/CCRaceFemFig-1.png)
![Male Associates completion by race/ethnicity over time. Error bars are approximate 95% confidence intervals.](figure/CCRaceMalFig-1.png)


\newline \newline \newline
![Female Associates completion by race/ethnicity over time. Error bars are approximate 95% confidence intervals.](figure/CCRaceFemFigChg-1.png)
![Male Associates completion by race/ethnicity over time. Error bars are approximate 95% confidence intervals.](figure/CCRaceMalFigChg-1.png)





# Bachelors
\newline \newline \newline

|Year             |Deaf             |Hearing        |
|:----------------|:----------------|:--------------|
|2008             |15.9 $\pm$ 0.4   |30.2 $\pm$ 0.1 |
|2009             |15.9 $\pm$ 0.4   |30.5 $\pm$ 0.1 |
|2010             |15.8 $\pm$ 0.4   |30.6 $\pm$ 0.1 |
|2011             |16.3 $\pm$ 0.4   |30.9 $\pm$ 0.1 |
|2012             |16.1 $\pm$ 0.4   |31.4 $\pm$ 0.1 |
|2013             |17.5 $\pm$ 0.5   |31.8 $\pm$ 0.1 |
|2014             |17.7 $\pm$ 0.5   |32.2 $\pm$ 0.1 |
|2015             |18.3 $\pm$ 0.5   |32.7 $\pm$ 0.1 |
|2016             |18.4 $\pm$ 0.5   |33.4 $\pm$ 0.2 |
|2017             |18.8 $\pm$ 0.6   |34 $\pm$ 0.2   |
|2018             |19.2 $\pm$ 0.5   |34.7 $\pm$ 0.2 |
|Growth           |3.3 $\pm$ 0.6    |4.5 $\pm$ 0.2  |
|Trend            |0.4 $\pm$ 0.1    |0.4 $\pm$ 0.1  |
|Trend (Adj)      |0.5 $\pm$ 0.1*** |0.4 $\pm$ 0    |
|Sample Size/year |38,892           |1,551,126      |

Table: Bachelor's degree attainment from 2008-2016.

\newline \newline \newline
![High School completion over time. Error bars are approximate 95% confidence intervals.](figure/BAtotFig-1.png)
\newline \newline \newline
![Change in Bachelor's degree attainment over time. Error bars are approximate 95% confidence intervals.](figure/BAtotFigChange-1.png)





## Attainment By Gender

\newline \newline \newline

|Year             |Female           |Male             |
|:----------------|:----------------|:----------------|
|2008             |16.1 $\pm$ 0.7   |15.7 $\pm$ 0.5   |
|2009             |16.4 $\pm$ 0.6   |15.7 $\pm$ 0.5   |
|2010             |16.3 $\pm$ 0.7   |15.5 $\pm$ 0.5   |
|2011             |17.3 $\pm$ 0.8   |15.7 $\pm$ 0.6   |
|2012             |17.1 $\pm$ 0.7   |15.5 $\pm$ 0.5   |
|2013             |19.1 $\pm$ 0.7   |16.5 $\pm$ 0.6   |
|2014             |19 $\pm$ 0.7     |16.9 $\pm$ 0.6   |
|2015             |19.9 $\pm$ 0.7   |17.3 $\pm$ 0.7   |
|2016             |20 $\pm$ 0.7     |17.4 $\pm$ 0.6   |
|2017             |20.8 $\pm$ 0.9   |17.6 $\pm$ 0.7   |
|2018             |21.2 $\pm$ 0.9   |17.9 $\pm$ 0.6   |
|Growth           |5.1 $\pm$ 1.2    |2.1 $\pm$ 0.8    |
|Trend            |0.6 $\pm$ 0.1    |0.3 $\pm$ 0.1    |
|Trend (Adj)      |0.6 $\pm$ 0.1*** |0.4 $\pm$ 0.1*** |
|Sample Size/year |14,202           |24,690           |

Table: Percentage of deaf Americans by gender attaining a
Bachelor's degree.



\newline \newline \newline

|Year             |Female         |Male           |
|:----------------|:--------------|:--------------|
|2008             |30.5 $\pm$ 0.1 |29.9 $\pm$ 0.1 |
|2009             |31.1 $\pm$ 0.2 |29.8 $\pm$ 0.2 |
|2010             |31.4 $\pm$ 0.1 |29.8 $\pm$ 0.1 |
|2011             |31.8 $\pm$ 0.2 |29.9 $\pm$ 0.2 |
|2012             |32.6 $\pm$ 0.1 |30.2 $\pm$ 0.1 |
|2013             |33 $\pm$ 0.2   |30.5 $\pm$ 0.1 |
|2014             |33.6 $\pm$ 0.2 |30.7 $\pm$ 0.1 |
|2015             |34.3 $\pm$ 0.2 |31.1 $\pm$ 0.2 |
|2016             |35.1 $\pm$ 0.2 |31.6 $\pm$ 0.2 |
|2017             |36 $\pm$ 0.2   |32 $\pm$ 0.2   |
|2018             |36.7 $\pm$ 0.2 |32.6 $\pm$ 0.2 |
|Growth           |6.1 $\pm$ 0.2  |2.8 $\pm$ 0.2  |
|Trend            |0.6 $\pm$ 0.1  |0.3 $\pm$ 0.1  |
|Trend (Adj)      |0.6 $\pm$ 0    |0.2 $\pm$ 0.1  |
|Sample Size/year |809,653        |741,472        |

Table: Percentage of hearing Americans by gender attaining a
Bachelor's degree.

\newline \newline \newline


<!-- Table: Differences in growth and trends between deaf and hearing -->
<!-- Americans for males and females. Positive Differences indicate faster -->
<!-- growth for deaf Americans. -->


\newline \newline \newline
![High School completion by gender over time. Error bars are approximate 95% confidence intervals.](figure/BASexFig-1.png)
\newline \newline \newline
![Change in Bachelor's degree by gender attainment over time. Error bars are approximate 95% confidence intervals.](figure/BASexFigChange-1.png)

## Attainment By Age Category




\newline \newline \newline

|Year             |25-34            |35-44            |45-54            |55-64          |
|:----------------|:----------------|:----------------|:----------------|:--------------|
|2008             |13.2 $\pm$ 1.5   |14.8 $\pm$ 1.1   |14.6 $\pm$ 0.7   |17.8 $\pm$ 0.6 |
|2009             |14.2 $\pm$ 1.7   |14.9 $\pm$ 1.2   |14.3 $\pm$ 0.7   |17.8 $\pm$ 0.6 |
|2010             |14.9 $\pm$ 1.4   |15.4 $\pm$ 1.2   |13.8 $\pm$ 0.7   |17.4 $\pm$ 0.6 |
|2011             |14.7 $\pm$ 1.5   |16.7 $\pm$ 1.2   |14.3 $\pm$ 0.9   |17.8 $\pm$ 0.6 |
|2012             |14.6 $\pm$ 1.6   |16.5 $\pm$ 1.4   |14 $\pm$ 0.8     |17.6 $\pm$ 0.6 |
|2013             |15.7 $\pm$ 1.5   |17.5 $\pm$ 1.5   |16.3 $\pm$ 0.8   |18.6 $\pm$ 0.6 |
|2014             |16.6 $\pm$ 1.6   |20.6 $\pm$ 1.7   |15.6 $\pm$ 0.9   |18.4 $\pm$ 0.6 |
|2015             |17.4 $\pm$ 1.7   |20.5 $\pm$ 1.4   |17.4 $\pm$ 0.9   |18.3 $\pm$ 0.7 |
|2016             |18.6 $\pm$ 1.4   |19.9 $\pm$ 1.5   |17.8 $\pm$ 0.8   |18.3 $\pm$ 0.7 |
|2017             |18.3 $\pm$ 1.6   |20.6 $\pm$ 1.4   |18.9 $\pm$ 1     |18.4 $\pm$ 0.6 |
|2018             |19.4 $\pm$ 1.6   |20.6 $\pm$ 1.3   |20.1 $\pm$ 1     |18.2 $\pm$ 0.8 |
|Growth           |6.2 $\pm$ 2.2    |5.9 $\pm$ 1.7    |5.5 $\pm$ 1.2    |0.4 $\pm$ 1    |
|Trend            |0.6 $\pm$ 0.1    |0.7 $\pm$ 0.1    |0.5 $\pm$ 0.2    |0.1 $\pm$ 0    |
|Trend (Adj)      |0.6 $\pm$ 0.2*** |0.7 $\pm$ 0.1*** |0.6 $\pm$ 0.1*** |0.1 $\pm$ 0.1. |
|Sample Size/year |3,180            |4,868            |10,724           |20,119         |

Table: Percentage of deaf Americans by age category attaining a
Bachelor's degree.



\newline \newline \newline

|Year             |25-34          |35-44          |45-54          |55-64          |
|:----------------|:--------------|:--------------|:--------------|:--------------|
|2008             |30.1 $\pm$ 0.2 |31.4 $\pm$ 0.2 |28.8 $\pm$ 0.2 |30.7 $\pm$ 0.2 |
|2009             |31.6 $\pm$ 0.2 |31.5 $\pm$ 0.2 |28.4 $\pm$ 0.2 |30.6 $\pm$ 0.2 |
|2010             |31.9 $\pm$ 0.2 |31.9 $\pm$ 0.2 |28.2 $\pm$ 0.2 |30.5 $\pm$ 0.2 |
|2011             |32.4 $\pm$ 0.3 |32.6 $\pm$ 0.2 |28.5 $\pm$ 0.2 |30.3 $\pm$ 0.2 |
|2012             |33.1 $\pm$ 0.2 |33.3 $\pm$ 0.2 |29.1 $\pm$ 0.2 |30.2 $\pm$ 0.2 |
|2013             |33.6 $\pm$ 0.3 |33.6 $\pm$ 0.2 |29.7 $\pm$ 0.2 |30.1 $\pm$ 0.2 |
|2014             |34.2 $\pm$ 0.2 |34.3 $\pm$ 0.2 |30.3 $\pm$ 0.2 |29.9 $\pm$ 0.2 |
|2015             |35 $\pm$ 0.2   |34.9 $\pm$ 0.2 |31.1 $\pm$ 0.2 |29.7 $\pm$ 0.2 |
|2016             |35.7 $\pm$ 0.3 |35.8 $\pm$ 0.2 |32.1 $\pm$ 0.2 |29.7 $\pm$ 0.2 |
|2017             |36.4 $\pm$ 0.3 |36.6 $\pm$ 0.2 |33.1 $\pm$ 0.2 |29.8 $\pm$ 0.2 |
|2018             |37.1 $\pm$ 0.3 |37.5 $\pm$ 0.2 |34 $\pm$ 0.2   |30 $\pm$ 0.2   |
|Growth           |6.9 $\pm$ 0.4  |6.1 $\pm$ 0.3  |5.2 $\pm$ 0.3  |-0.7 $\pm$ 0.3 |
|Trend            |0.6 $\pm$ 0.1  |0.6 $\pm$ 0.1  |0.5 $\pm$ 0.2  |-0.1 $\pm$ 0   |
|Trend (Adj)      |0.6 $\pm$ 0    |0.6 $\pm$ 0    |0.6 $\pm$ 0.1  |-0.1 $\pm$ 0.1 |
|Sample Size/year |350,159        |362,410        |424,763        |413,794        |

Table: Percentage of hearing Americans by age category attaining a
Bachelor's degree.


\newline \newline \newline


<!-- Table: Differences in growth and trends between deaf and hearing -->
<!-- Americans for each age category. Positive Differences indicate faster -->
<!-- growth for deaf Americans. -->


\newline \newline \newline
![Associates completion by age category over time. Error bars are approximate 95% confidence intervals.](figure/BAByAgeCatFig-1.png)
\newline \newline \newline
![Change in Bachelor's degree attainment by age category over time. Error bars are approximate 95% confidence intervals.](figure/BAByAgeCatFigChange-1.png)




### By Race/Ethnicity
\newline \newline \newline

|Year             |African American |American Indian |Asian/PacIsl   |Hispanic         |Other          |White            |
|:----------------|:----------------|:---------------|:--------------|:----------------|:--------------|:----------------|
|2008             |9.6 $\pm$ 1.5    |10.5 $\pm$ 3.2  |29.7 $\pm$ 4.7 |8.6 $\pm$ 1.2    |17 $\pm$ 3.3   |17.4 $\pm$ 0.5   |
|2009             |9.3 $\pm$ 1.2    |14 $\pm$ 3.1    |28.4 $\pm$ 3.3 |9.5 $\pm$ 1.3    |15.4 $\pm$ 3.3 |17.3 $\pm$ 0.5   |
|2010             |8.9 $\pm$ 1.2    |10.4 $\pm$ 3.3  |27.5 $\pm$ 3.5 |8.6 $\pm$ 1      |17.1 $\pm$ 2.8 |17.4 $\pm$ 0.5   |
|2011             |8.6 $\pm$ 1.2    |10 $\pm$ 3.3    |30.5 $\pm$ 4.4 |8.8 $\pm$ 1.1    |16.3 $\pm$ 3.7 |18.1 $\pm$ 0.6   |
|2012             |9.3 $\pm$ 1.1    |12.2 $\pm$ 3.8  |27.6 $\pm$ 3.7 |8.8 $\pm$ 1      |15.1 $\pm$ 2.9 |17.9 $\pm$ 0.6   |
|2013             |10.9 $\pm$ 1.4   |15.2 $\pm$ 4.4  |28.4 $\pm$ 3.7 |9.6 $\pm$ 1      |17.3 $\pm$ 2.7 |19.2 $\pm$ 0.5   |
|2014             |10.5 $\pm$ 1.3   |13.4 $\pm$ 3.7  |29.4 $\pm$ 3.8 |10.9 $\pm$ 1.2   |19.2 $\pm$ 3   |19.4 $\pm$ 0.6   |
|2015             |11 $\pm$ 1.4     |13.5 $\pm$ 3.9  |29.8 $\pm$ 4   |11.3 $\pm$ 1.1   |17.2 $\pm$ 3.2 |20.1 $\pm$ 0.6   |
|2016             |12.8 $\pm$ 1.4   |9.5 $\pm$ 2.8   |30.6 $\pm$ 4.1 |11 $\pm$ 1.2     |20.5 $\pm$ 3.1 |20.2 $\pm$ 0.5   |
|2017             |11.8 $\pm$ 1.3   |9.5 $\pm$ 2.9   |31.2 $\pm$ 3.3 |12.3 $\pm$ 1.2   |19 $\pm$ 2.8   |20.5 $\pm$ 0.6   |
|2018             |14.2 $\pm$ 1.6   |11.2 $\pm$ 3.4  |30.6 $\pm$ 3.4 |13.1 $\pm$ 1.1   |20.6 $\pm$ 3.7 |20.6 $\pm$ 0.6   |
|Growth           |4.5 $\pm$ 2.2    |0.6 $\pm$ 4.7   |0.9 $\pm$ 5.8  |4.5 $\pm$ 1.6    |3.6 $\pm$ 4.9  |3.2 $\pm$ 0.8    |
|Trend            |0.5 $\pm$ 0.2    |-0.1 $\pm$ 0.3  |0.3 $\pm$ 0.2  |0.5 $\pm$ 0.1    |0.4 $\pm$ 0.2  |0.4 $\pm$ 0.1    |
|Trend (Adj)      |0.5 $\pm$ 0.2*** |-0.1 $\pm$ 0.4  |0.2 $\pm$ 0.4  |0.5 $\pm$ 0.1*** |0.3 $\pm$ 0.4. |0.5 $\pm$ 0.1*** |
|Sample Size/year |3,014            |720             |850            |3,767            |870            |29,671           |

Table: Percentage of deaf Americans by race/ethnicity attaining a
Bachelor's degree.



\newline \newline \newline

|Year             |African American |American Indian |Asian/PacIsl   |Hispanic       |Other          |White          |
|:----------------|:----------------|:---------------|:--------------|:--------------|:--------------|:--------------|
|2008             |19.3 $\pm$ 0.2   |14.4 $\pm$ 0.9  |52.5 $\pm$ 0.4 |13.6 $\pm$ 0.2 |28.7 $\pm$ 0.7 |34.1 $\pm$ 0.1 |
|2009             |19.5 $\pm$ 0.3   |14.7 $\pm$ 0.8  |52.4 $\pm$ 0.5 |13.4 $\pm$ 0.2 |29.8 $\pm$ 0.8 |34.5 $\pm$ 0.1 |
|2010             |19.8 $\pm$ 0.2   |15 $\pm$ 0.8    |52.4 $\pm$ 0.5 |13.8 $\pm$ 0.2 |31.9 $\pm$ 0.8 |34.7 $\pm$ 0.1 |
|2011             |20.5 $\pm$ 0.3   |15.2 $\pm$ 0.9  |52.7 $\pm$ 0.5 |14.1 $\pm$ 0.2 |30.6 $\pm$ 0.7 |35 $\pm$ 0.2   |
|2012             |20.6 $\pm$ 0.3   |14.9 $\pm$ 0.8  |53.3 $\pm$ 0.5 |14.7 $\pm$ 0.2 |32.5 $\pm$ 0.9 |35.6 $\pm$ 0.1 |
|2013             |21 $\pm$ 0.3     |14.9 $\pm$ 0.9  |54 $\pm$ 0.4   |14.8 $\pm$ 0.2 |33.9 $\pm$ 0.9 |36.1 $\pm$ 0.2 |
|2014             |21.6 $\pm$ 0.3   |15.1 $\pm$ 0.9  |54.1 $\pm$ 0.5 |15.3 $\pm$ 0.2 |34.3 $\pm$ 0.7 |36.6 $\pm$ 0.1 |
|2015             |22.1 $\pm$ 0.3   |15.2 $\pm$ 0.9  |55.2 $\pm$ 0.5 |15.8 $\pm$ 0.2 |35.8 $\pm$ 0.7 |37.1 $\pm$ 0.2 |
|2016             |22.7 $\pm$ 0.3   |15.4 $\pm$ 0.9  |56.3 $\pm$ 0.5 |16.3 $\pm$ 0.2 |35.6 $\pm$ 0.6 |37.9 $\pm$ 0.2 |
|2017             |23.4 $\pm$ 0.3   |15.8 $\pm$ 0.8  |57.2 $\pm$ 0.4 |16.9 $\pm$ 0.2 |37 $\pm$ 0.8   |38.6 $\pm$ 0.2 |
|2018             |24 $\pm$ 0.3     |15.8 $\pm$ 0.8  |58.5 $\pm$ 0.5 |17.9 $\pm$ 0.3 |38.2 $\pm$ 0.8 |39.2 $\pm$ 0.2 |
|Growth           |4.7 $\pm$ 0.4    |1.3 $\pm$ 1.2   |5.9 $\pm$ 0.6  |4.3 $\pm$ 0.3  |9.5 $\pm$ 1.1  |5.1 $\pm$ 0.2  |
|Trend            |0.5 $\pm$ 0.1    |0.1 $\pm$ 0     |0.6 $\pm$ 0.2  |0.4 $\pm$ 0.1  |0.9 $\pm$ 0.1  |0.5 $\pm$ 0.1  |
|Trend (Adj)      |0.5 $\pm$ 0      |0.1 $\pm$ 0.1   |0.6 $\pm$ 0.1  |0.4 $\pm$ 0    |0.8 $\pm$ 0.1  |0.5 $\pm$ 0.1  |
|Sample Size/year |150,209          |13,058          |86,979         |202,398        |24,996         |1,073,486      |

Table: Percentage of hearing Americans by race/ethnicity attaining a
Bachelor's degree.


\newline \newline \newline


<!-- Table: Differences in growth and trends between deaf and hearing -->
<!-- Americans for each race/ethnicity. Positive Differences indicate faster -->
<!-- growth for deaf Americans. -->


\newline \newline \newline
![Associates completion by race/ethnicity over time. Error bars are approximate 95% confidence intervals.](figure/BARaceFig-1.png)
\newline \newline \newline
![Change in Bachelor's degree attainment by race/ethnicity over time. Error bars are approximate 95% confidence intervals.](figure/BARaceFigChange-1.png)






### By Race/Ethnicity and Gender

#### Deaf Female
\newline \newline \newline

|Year             |African American |American Indian |Asian/PacIsl   |Hispanic         |Other          |White            |
|:----------------|:----------------|:---------------|:--------------|:----------------|:--------------|:----------------|
|2008             |9.6 $\pm$ 1.8    |8.3 $\pm$ 3.7   |29.7 $\pm$ 6.4 |8.8 $\pm$ 1.8    |15.9 $\pm$ 4.5 |18.2 $\pm$ 0.9   |
|2009             |10.3 $\pm$ 1.9   |14.1 $\pm$ 6.1  |26.3 $\pm$ 5.3 |8.9 $\pm$ 1.8    |12.6 $\pm$ 3.8 |18.5 $\pm$ 0.9   |
|2010             |10.4 $\pm$ 1.9   |12.9 $\pm$ 5.4  |27.6 $\pm$ 5.2 |8.3 $\pm$ 1.5    |17.3 $\pm$ 4.7 |18.4 $\pm$ 0.8   |
|2011             |9.4 $\pm$ 2      |9.4 $\pm$ 4.7   |29.3 $\pm$ 5.6 |7.8 $\pm$ 1.7    |16.7 $\pm$ 6.3 |20.1 $\pm$ 1     |
|2012             |9.7 $\pm$ 1.6    |16.3 $\pm$ 8.1  |25.5 $\pm$ 5   |8.9 $\pm$ 1.6    |14.6 $\pm$ 5.4 |19.6 $\pm$ 0.9   |
|2013             |11.5 $\pm$ 2.2   |13 $\pm$ 4.6    |26.9 $\pm$ 4.9 |9.1 $\pm$ 1.6    |14.9 $\pm$ 4.2 |22.1 $\pm$ 0.9   |
|2014             |12.4 $\pm$ 2     |12.5 $\pm$ 4.6  |28.5 $\pm$ 5.8 |11.9 $\pm$ 2.1   |20.7 $\pm$ 4.8 |21.1 $\pm$ 0.9   |
|2015             |12.7 $\pm$ 1.8   |10 $\pm$ 5.3    |29.2 $\pm$ 6.2 |11 $\pm$ 1.5     |15.7 $\pm$ 4.9 |22.9 $\pm$ 0.9   |
|2016             |15.4 $\pm$ 2.1   |9.1 $\pm$ 4.5   |28.1 $\pm$ 4.4 |11.8 $\pm$ 1.9   |23 $\pm$ 5.6   |22.3 $\pm$ 0.9   |
|2017             |13.5 $\pm$ 2.2   |8.7 $\pm$ 4.2   |31.3 $\pm$ 5.2 |11.8 $\pm$ 1.7   |19.4 $\pm$ 4.5 |23.5 $\pm$ 1.2   |
|2018             |15 $\pm$ 2.4     |12 $\pm$ 5.2    |31.4 $\pm$ 4.9 |12.7 $\pm$ 1.7   |25.6 $\pm$ 6.6 |23.6 $\pm$ 1.2   |
|Growth           |5.4 $\pm$ 3      |3.8 $\pm$ 6.4   |1.7 $\pm$ 8    |3.8 $\pm$ 2.4    |9.6 $\pm$ 8    |5.5 $\pm$ 1.5    |
|Trend            |0.6 $\pm$ 0.2    |0 $\pm$ 0.6     |0.3 $\pm$ 0.3  |0.5 $\pm$ 0.1    |0.8 $\pm$ 0.5  |0.6 $\pm$ 0.1    |
|Trend (Adj)      |0.6 $\pm$ 0.2*** |0.2 $\pm$ NaN   |0 $\pm$ 0.6    |0.4 $\pm$ 0.2*** |0.6 $\pm$ 0.6. |0.7 $\pm$ 0.1*** |
|Sample Size/year |1,420            |276             |398            |1,560            |342            |10,205           |

Table: Percentage of female deaf Americans by race/ethnicity attaining a
Bachelors Degree.
Bachelors degree or equivalent.

#### Deaf Male
\newline \newline \newline

|Year             |African American |American Indian |Asian/PacIsl   |Hispanic         |Other          |White            |
|:----------------|:----------------|:---------------|:--------------|:----------------|:--------------|:----------------|
|2008             |9.7 $\pm$ 2.1    |12.1 $\pm$ 4.5  |29.7 $\pm$ 5.4 |8.5 $\pm$ 1.6    |17.7 $\pm$ 4.7 |17 $\pm$ 0.7     |
|2009             |8.5 $\pm$ 1.8    |13.9 $\pm$ 4.3  |30 $\pm$ 4.8   |9.9 $\pm$ 1.4    |17.6 $\pm$ 5.1 |16.7 $\pm$ 0.6   |
|2010             |7.6 $\pm$ 1.4    |9 $\pm$ 3.9     |27.5 $\pm$ 5   |8.8 $\pm$ 1.4    |16.9 $\pm$ 3.5 |16.9 $\pm$ 0.6   |
|2011             |7.8 $\pm$ 1.6    |10.3 $\pm$ 3.9  |31.6 $\pm$ 6.7 |9.5 $\pm$ 1.6    |16.1 $\pm$ 4.8 |17.1 $\pm$ 0.7   |
|2012             |9 $\pm$ 1.5      |9.3 $\pm$ 3.9   |29.6 $\pm$ 5.5 |8.7 $\pm$ 1.3    |15.4 $\pm$ 3.5 |17 $\pm$ 0.7     |
|2013             |10.3 $\pm$ 2.2   |16.7 $\pm$ 6.8  |29.9 $\pm$ 5.7 |10 $\pm$ 1.4     |18.9 $\pm$ 4.2 |17.7 $\pm$ 0.7   |
|2014             |8.7 $\pm$ 1.7    |14 $\pm$ 5.2    |30.2 $\pm$ 4.9 |10.2 $\pm$ 1.5   |17.8 $\pm$ 4.5 |18.4 $\pm$ 0.7   |
|2015             |9.5 $\pm$ 1.8    |16.2 $\pm$ 5.5  |30.2 $\pm$ 5.1 |11.5 $\pm$ 1.3   |18.1 $\pm$ 4.6 |18.6 $\pm$ 0.8   |
|2016             |10.7 $\pm$ 1.8   |9.8 $\pm$ 3.5   |32.8 $\pm$ 5.8 |10.5 $\pm$ 1.5   |18.8 $\pm$ 4.1 |18.9 $\pm$ 0.6   |
|2017             |10.4 $\pm$ 1.9   |9.9 $\pm$ 3.6   |31.1 $\pm$ 4.2 |12.6 $\pm$ 1.6   |18.7 $\pm$ 3.8 |18.9 $\pm$ 0.8   |
|2018             |13.5 $\pm$ 2.2   |10.6 $\pm$ 4.1  |29.8 $\pm$ 4.7 |13.4 $\pm$ 1.6   |17.5 $\pm$ 3.8 |18.9 $\pm$ 0.7   |
|Growth           |3.8 $\pm$ 3.1    |-1.5 $\pm$ 6.1  |0.1 $\pm$ 7.1  |5 $\pm$ 2.3      |-0.2 $\pm$ 6   |1.9 $\pm$ 1      |
|Trend            |0.4 $\pm$ 0.3    |-0.1 $\pm$ 0.3  |0.2 $\pm$ 0.2  |0.4 $\pm$ 0.2    |0.2 $\pm$ 0.2  |0.3 $\pm$ 0.1    |
|Trend (Adj)      |0.4 $\pm$ 0.2*** |-0.3 $\pm$ 0.6  |-0.1 $\pm$ 0.6 |0.5 $\pm$ 0.2*** |-0.1 $\pm$ 0.6 |0.4 $\pm$ 0.1*** |
|Sample Size/year |1,594            |444             |452            |2,207            |528            |19,466           |

Table: Percentage of male deaf Americans by race/ethnicity attaining a
Bachelors degree or equivalent.


#### Hearing Female
\newline \newline \newline
\newpage

|Year             |African American |American Indian |Asian/PacIsl   |Hispanic       |Other          |White          |
|:----------------|:----------------|:---------------|:--------------|:--------------|:--------------|:--------------|
|2008             |20.6 $\pm$ 0.3   |16.5 $\pm$ 1.2  |50.6 $\pm$ 0.5 |14.8 $\pm$ 0.3 |29.3 $\pm$ 1   |34.2 $\pm$ 0.2 |
|2009             |21.2 $\pm$ 0.3   |15.8 $\pm$ 1.1  |50.6 $\pm$ 0.6 |14.8 $\pm$ 0.3 |30.4 $\pm$ 1.1 |34.9 $\pm$ 0.2 |
|2010             |21.7 $\pm$ 0.3   |15.7 $\pm$ 1.1  |50.8 $\pm$ 0.6 |15.3 $\pm$ 0.3 |32.9 $\pm$ 1   |35.3 $\pm$ 0.2 |
|2011             |22.3 $\pm$ 0.3   |16.6 $\pm$ 1.1  |51.4 $\pm$ 0.6 |15.6 $\pm$ 0.3 |31.4 $\pm$ 1   |35.8 $\pm$ 0.2 |
|2012             |22.7 $\pm$ 0.4   |17 $\pm$ 1.2    |52.1 $\pm$ 0.5 |16.4 $\pm$ 0.3 |34 $\pm$ 1.1   |36.7 $\pm$ 0.2 |
|2013             |23.3 $\pm$ 0.4   |16.3 $\pm$ 1.1  |52.6 $\pm$ 0.5 |16.4 $\pm$ 0.3 |35.3 $\pm$ 1   |37.2 $\pm$ 0.2 |
|2014             |23.7 $\pm$ 0.3   |16.3 $\pm$ 1.2  |52.9 $\pm$ 0.6 |16.9 $\pm$ 0.3 |36 $\pm$ 1     |38 $\pm$ 0.2   |
|2015             |24.4 $\pm$ 0.4   |16.6 $\pm$ 1.2  |54 $\pm$ 0.5   |17.6 $\pm$ 0.3 |38.1 $\pm$ 1   |38.7 $\pm$ 0.2 |
|2016             |24.9 $\pm$ 0.4   |16.4 $\pm$ 1.3  |55.2 $\pm$ 0.6 |18 $\pm$ 0.3   |36.9 $\pm$ 1   |39.7 $\pm$ 0.2 |
|2017             |26 $\pm$ 0.4     |17.5 $\pm$ 1.3  |56.2 $\pm$ 0.5 |19 $\pm$ 0.3   |39.4 $\pm$ 1   |40.7 $\pm$ 0.2 |
|2018             |26.8 $\pm$ 0.4   |18.5 $\pm$ 1.4  |57.5 $\pm$ 0.5 |20 $\pm$ 0.3   |39.8 $\pm$ 1   |41.3 $\pm$ 0.2 |
|Growth           |6.2 $\pm$ 0.5    |2 $\pm$ 1.8     |7 $\pm$ 0.7    |5.2 $\pm$ 0.4  |10.5 $\pm$ 1.4 |7.1 $\pm$ 0.2  |
|Trend            |0.6 $\pm$ 0      |0.2 $\pm$ 0.1   |0.7 $\pm$ 0.2  |0.5 $\pm$ 0.1  |1.1 $\pm$ 0.1  |0.7 $\pm$ 0    |
|Trend (Adj)      |0.6 $\pm$ 0.1    |0.2 $\pm$ 0.1   |0.7 $\pm$ 0.1  |0.5 $\pm$ 0    |1 $\pm$ 0.1    |0.7 $\pm$ 0.1  |
|Sample Size/year |84,384           |6,959           |47,237         |104,750        |13,296         |553,026        |

Table: Percentage of female hearing Americans by race/ethnicity attaining a
Bachelors degree or equivalent.
\newpage
#### Hearing Male
\newline \newline \newline

|Year             |African American |American Indian |Asian/PacIsl   |Hispanic       |Other          |White          |
|:----------------|:----------------|:---------------|:--------------|:--------------|:--------------|:--------------|
|2008             |17.8 $\pm$ 0.4   |12 $\pm$ 1.2    |54.7 $\pm$ 0.6 |12.6 $\pm$ 0.3 |28.1 $\pm$ 1   |34 $\pm$ 0.2   |
|2009             |17.4 $\pm$ 0.3   |13.4 $\pm$ 1.2  |54.3 $\pm$ 0.6 |12.1 $\pm$ 0.3 |29.1 $\pm$ 0.9 |34.1 $\pm$ 0.2 |
|2010             |17.4 $\pm$ 0.3   |14.3 $\pm$ 1.1  |54.3 $\pm$ 0.6 |12.3 $\pm$ 0.3 |30.8 $\pm$ 1.1 |34.1 $\pm$ 0.2 |
|2011             |18.3 $\pm$ 0.4   |13.5 $\pm$ 1.1  |54.3 $\pm$ 0.6 |12.7 $\pm$ 0.3 |29.7 $\pm$ 1   |34.2 $\pm$ 0.2 |
|2012             |18.1 $\pm$ 0.3   |12.4 $\pm$ 1.1  |54.7 $\pm$ 0.7 |13.1 $\pm$ 0.3 |30.9 $\pm$ 1.1 |34.6 $\pm$ 0.2 |
|2013             |18.2 $\pm$ 0.4   |13.4 $\pm$ 1.3  |55.7 $\pm$ 0.5 |13.3 $\pm$ 0.3 |32.4 $\pm$ 1.1 |34.9 $\pm$ 0.2 |
|2014             |19 $\pm$ 0.4     |13.7 $\pm$ 1.2  |55.5 $\pm$ 0.6 |13.7 $\pm$ 0.3 |32.4 $\pm$ 1   |35.1 $\pm$ 0.2 |
|2015             |19.3 $\pm$ 0.4   |13.5 $\pm$ 1.2  |56.6 $\pm$ 0.7 |14 $\pm$ 0.3   |33.3 $\pm$ 1   |35.5 $\pm$ 0.2 |
|2016             |20 $\pm$ 0.4     |14.3 $\pm$ 1.4  |57.7 $\pm$ 0.6 |14.5 $\pm$ 0.3 |34 $\pm$ 0.9   |36 $\pm$ 0.2   |
|2017             |20.4 $\pm$ 0.4   |13.8 $\pm$ 1.2  |58.4 $\pm$ 0.5 |14.8 $\pm$ 0.3 |34.5 $\pm$ 1.1 |36.5 $\pm$ 0.2 |
|2018             |20.8 $\pm$ 0.4   |12.6 $\pm$ 1.2  |59.5 $\pm$ 0.6 |15.9 $\pm$ 0.3 |36.4 $\pm$ 1.1 |37.1 $\pm$ 0.2 |
|Growth           |3 $\pm$ 0.5      |0.6 $\pm$ 1.7   |4.8 $\pm$ 0.8  |3.3 $\pm$ 0.4  |8.4 $\pm$ 1.5  |3.1 $\pm$ 0.3  |
|Trend            |0.3 $\pm$ 0.1    |0 $\pm$ 0.2     |0.5 $\pm$ 0.2  |0.3 $\pm$ 0.1  |0.7 $\pm$ 0.1  |0.3 $\pm$ 0.1  |
|Trend (Adj)      |0.3 $\pm$ 0      |0 $\pm$ 0.1     |0.5 $\pm$ 0.1  |0.3 $\pm$ 0    |0.6 $\pm$ 0.1  |0.3 $\pm$ 0.1  |
|Sample Size/year |65,825           |6,099           |39,742         |97,647         |11,699         |520,460        |

Table: Percentage of male hearing Americans by race/ethnicity attaining a
Bachelors degree or equivalent.

<!-- #### Deaf Hearing Differences by Race: Female -->
\newline \newline \newline


<!-- Table: Differences in growth and trends between female deaf and hearing -->
<!-- Americans for each race/ethicity category. Positive Differences indicate faster -->
<!-- growth for deaf Americans. -->

<!-- #### Deaf Hearing Differences by Race: Male -->
\newline \newline \newline


<!-- Table: Differences in growth and trends between male deaf and hearing -->
<!-- Americans for each race/ethicity category. Positive Differences indicate faster -->
<!-- growth for deaf Americans. -->



\newline \newline \newline
![Female High School completion by race/ethnicity over time. Error bars are approximate 95% confidence intervals.](figure/BACHRaceFemFig-1.png)
![Male High School completion by race/ethnicity over time. Error bars are approximate 95% confidence intervals.](figure/BACHRaceMalFig-1.png)


\newline \newline \newline
![Female High School completion by race/ethnicity over time. Error bars are approximate 95% confidence intervals.](figure/BACHRaceFemFigChg-1.png)
![Male High School completion by race/ethnicity over time. Error bars are approximate 95% confidence intervals.](figure/BACHRaceMalFigChg-1.png)
