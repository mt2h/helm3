{{- define "template1.labels" }}
  labels:
     responsible: Thomas
     date: {{ now | htmlDate }}
{{- end }}
