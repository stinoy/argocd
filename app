apiVersion: argoproj.io/v1alpha1
kind: Application
metadata:
  name: my-sample-app
  namespace: argocd
spec:
  project: default
  source:
    repoURL: 'https://github.com/stinoy/argocd.git'
    targetRevision: HEAD
    path: .
  destination:
    server: 'https://14F705394224B794896B3E4A71588F5C.yl4.us-west-1.eks.amazonaws.com'
    namespace: default
  syncPolicy:
    automated:
      prune: true
      selfHeal: true
