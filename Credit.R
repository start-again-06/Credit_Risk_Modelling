install.packages("gmodels")
install.packages("DataExplorer")
install.packages("caTools")
install.packages("ROCR")

str(loan_data)
head(loan_data)

library(DataExplorer)

plot_str(loan_data)

head(loan_data)

CrossTable(loan_data$status)

CrossTable(loan_data$married_status , loan_data$status, prop.r = TRUE, prop.c = FALSE, prop.chisq = FALSE, prop.t = FALSE)

plot_histogram(loan_data)

plot(loan_data$cibil, ylab = "cibil")

plot(loan_data$status, loan_data$cibil, xlab = "default", ylab = "cibil")

plot_missing(loan_data)

create_report(loan_data)

library(gmodels)

set.seed(567)

library(caTools)

loansample <- sample.split(Y = loan_data$status, SplitRatio = 0.8)

train_data <- loan_data[loansample,]
test_data <- loan_data[!loansample,]

CrossTable(train_data$status)

CrossTable(test_data$status)

log_model <- glm(status ~ cibil, family = "binomial", data = train_data)

log_model

log_model <- glm(status ~ gender+married_status+salary+cibil+appcount+phonegrade+simstrength, family = "binomial", data = train_data)

summary(log_model)

predict <- predict(log_model, test_data, type = 'response')

table(test_data$status, predict > 0.5)

library(ROCR)
ROCRpred <- prediction(predict, test_data$status)
ROCRperf <- performance(ROCRpred, 'tpr','fpr')
plot(ROCRperf, colorize = TRUE, text.adj = c(-0.2,1.7))
