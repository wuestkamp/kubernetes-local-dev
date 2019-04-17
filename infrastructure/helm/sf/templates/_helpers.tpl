{{- define "pod.id" -}}
{{- if eq .Values.environment "dev" -}}
{{- default "sf-pod" -}}
{{- else -}}
{{- printf "sf-pod-%s" .Chart.Version -}}
{{- end -}}
{{- end -}}

{{- define "deployment.id" -}}
{{- if eq .Values.environment "dev" -}}
{{- default "sf-deployment" -}}
{{- else -}}
{{- printf "sf-deployment-%s" .Chart.Version -}}
{{- end -}}
{{- end -}}