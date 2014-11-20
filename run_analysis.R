library(plyr)


load.a.dataset <- function(dataset="test", base.path="UCI HAR Dataset") {
  base.path <- paste(base.path,dataset,sep="/")
  features.data.path <- paste0("X_",dataset,".txt")
  features.data.path <- paste(base.path,features.data.path,sep="/")
  outcome.path <- paste0("y_",dataset,".txt")
  outcome.path <- paste(base.path,outcome.path,sep="/")
  subject.path <- paste0("subject_",dataset,".txt")
  subject.path <- paste(base.path,subject.path,sep="/")
  features.data <- read.table(features.data.path)
  outcome.data  <- read.table(outcome.path)
  subject.data  <- read.table(subject.path)
  cbind(subject.data,outcome.data,features.data)
}


tidy.dataset <- function(dataset,features.names,activity.labels) {
  dataset[,2] <- factor(dataset[,2],labels=activity.labels$label)
  names(dataset) <- c("subject","activity",make.names(features.names$feature))
  to.keep <- grep("mean|std",names(dataset))
  to.keep <- c(1,2,to.keep)
  dataset <- dataset[,to.keep]
  names(dataset) <- gsub("\\.","",names(dataset))
  dataset
}


base.path <- paste("UCI HAR Dataset")

test.set <-  load.a.dataset("test", base.path=base.path)
train.set <- load.a.dataset("train", base.path=base.path)

activity.labels <-  read.table(paste(base.path,"activity_labels.txt",sep="/"))
names(activity.labels) <- c("code","label")

features.names <- read.table(paste(base.path,"features.txt",sep="/"))
names(features.names) <- c("ord","feature")



test.tidy  <-  tidy.dataset(test.set,features.names,activity.labels)
train.tidy <- tidy.dataset(train.set,features.names,activity.labels)
tidy.all  <- rbind(test.tidy,train.tidy)





columns.to.process <- colnames(tidy.all)[3:ncol(tidy.all)]
second.dataset <- ddply(tidy.all,.(subject,activity),colwise(mean,columns.to.process))

write.table(second.dataset, "second.dataset.txt",row.names=F)




