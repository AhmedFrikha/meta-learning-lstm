
return function(opt)
   
   opt.version = 2
   opt.dataLoader = 'dataset.data-loader2'
   opt.episodeSamplerKind = 'permutation'

   --opt.model = 'model.imagenet-net'
   opt.model = 'model.amazonCat-net'
   opt.learner = 'model.lstm.train-lstm'
   opt.classify = 'network'
   opt.BN_momentum = 0.9
   opt.nHidden = 20 --remove

   --[[opt.optimMethod = 'sgd'   
   opt.learningRate = 0.2  
   opt.learningRateDecay = 1e-4 
   --]]
   opt.optimMethod = 'adam'
   opt.learningRate = 0.001 --0.001
   opt.maxGradNorm = 0.25 
   --opt.momentum = 0.9
 
   opt.batchSize = {}
   opt.batchSize[1]=5
   opt.batchSize[5]=5 

   opt.nEpochs = {}
   opt.nEpochs[1]=5 --12
   opt.nEpochs[5]=5

   opt.BN1 = false 
   opt.BN2 = false
   opt.nEpisode = 50000 --75000 
   opt.nValidationEpisode = 100
   opt.printPer = 1000 --1000

   opt.useCUDA = true
   opt.useWHETLAB = false 
   opt.debug = false

   return opt
end