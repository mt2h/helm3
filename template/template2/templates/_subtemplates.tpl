{{- define "template2.labels"}}
  labels:
     responsible: Thomas
     date: {{now | htmlDate}}
     name: {{.Chart.Name}}
{{- end}}
