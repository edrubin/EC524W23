# 524/424 Final Exam: Take-Home Portion

## Big picture 

You are going to build a few statistical models to predict individual babies' birthweights using a host of parental data.

## Data

The data (contained in [`data-final.csv`](https://github.com/edrubin/EC524W23/blob/master/exam/take-home/data-final.csv)) come from a random subset of 10,000 births in the United States during 2021.

*Note:* If you're having trouble downloading the file with the link above, try [this link](https://minhaskamal.github.io/DownGit/#/home?url=https://github.com/edrubin/EC524W23/blob/626cf8b30a770055c04ea48174f67f1441bf8ee5/exam/take-home/data-final.csv) or download it from Canvas. 

I downloaded the data from the [National Bureau of Economic Research (NBER)'s server](https://www.nber.org/research/data/vital-statistics-natality-birth-data). They provide a nice [codebook](https://data.nber.org/nvss/natality/code/nat2021us.html).

The original data come from the [CDC's National Vital Statistics System (NVSS)](https://www.cdc.gov/nchs/nvss/birth_methods.htm#anchor_1551744577970), which also has a [nice codebook](https://www.cdc.gov/nchs/data_access/vitalstatsonline.htm) (see the *User's Guide* for 2021). 

You are going to be predicting `dbwt` (dry birthweight) using the 224 other variables in the dataset. Make sure you at least skim the codebook: some of the variables are going to be more helpful than others. You will also find that some are missing many observations—and you probably do not want always want to impute the missing values.

**Warning:** Because there are 10,000 obserations and many predictors, some of your models may take a little while to run. Be careful with how many hyperparameters you are trying... and which ones you try.

## Tasks

**[01]** (10 points) **Visualize** Read through the codebooks (linked above) to get a sense of the dataset's features. Once you understand the variables: Create three visualizations of the data that show some interesting insights. 

- *Why?* You should always visualize your data—both before and after analyzing your data. Start the exam by making a few figures to understand the data. You can always make better figures after you finish the other steps.
- *What* Your figures should be well labeled and aesthetically pleasing.

**[02]** (10 points) **Old-fashioned linear regression**  Now run a regression with several variables that you anticipate will be important for predicting birthweight. Report your cross-validated estimate for test performance (let's stick with MSE).

*Questions:*

- Does this linear-regression model seem good? 
- Does it seem like you did a good job of choosing variables?

**[03]** (10 points) **New-fashioned linear regression** Now try a penalized version of linear regression. Again, report your CV-based MSE.

*Questions*

- Did the penalized model beat your OLS model?
- Did the penalized model choose similar variables to your OLS model?

**[04]** (10 points) **Going nonlinear** Try an ensemble of trees—either random forest or boosted trees. Report your CV-based MSE.

*Bonus:* Does the ensemble "value" the same variables as the penalized model (in terms of variable importance)?

**[05]** (10 points) **Summary**

- Which model performed best? Would you say it is *significantly* better than the other models? Explain your answer.
- Does the best model's type (OLS, penalized regression, tree ensemble) suggest anything about this setting? Explain.

