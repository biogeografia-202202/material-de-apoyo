my_train <- function(formula = NULL, data = NULL, num_variables = 3:7,
                     metodo = 'leapSeq', preproceso = NULL) {
  library(foreach)
  library(leaps)
  library(caret)
  registerDoSEQ()
  stepmod <- train(
    form = formula,
    data = data,
    method = metodo,
    preProcess = preproceso,
    tuneGrid = if(metodo == 'leapSeq') data.frame(nvmax = num_variables) else NULL,
    na.action = na.exclude,
    trControl = trainControl(method = "cv", number = 3))
  return(stepmod)
}

print_my_train <- function(train = NULL) {
  l <- list(
    resumen_variables = summary(train$finalModel),
    resultados_nvmax = train$results,
    mejor_ajuste = train$bestTune
  )
  print(l)
}