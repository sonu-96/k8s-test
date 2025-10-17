{{- define "poc-app.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "poc-app.fullname" -}}
{{- printf "%s-%s" .Release.Name (include "poc-app.name" .) | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "poc-app.chart" -}}
{{ .Chart.Name }}-{{ .Chart.Version }}
{{- end -}}

