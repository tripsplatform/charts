{{/*
Expand the name of the chart.
*/}}
{{- define "nestjs.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Create a default fully qualified app name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
If release name contains chart name it will be used as a full name.
*/}}
{{- define "nestjs.fullname" -}}
{{- if .Values.fullnameOverride }}
{{- .Values.fullnameOverride | trunc 63 | trimSuffix "-" }}
{{- else }}
{{- $name := default .Chart.Name .Values.nameOverride }}
{{- if contains $name .Release.Name }}
{{- .Release.Name | trunc 63 | trimSuffix "-" }}
{{- else }}
{{- printf "%s-%s" .Release.Name $name | trunc 63 | trimSuffix "-" }}
{{- end }}
{{- end }}
{{- end }}

{{/*
Create chart name and version as used by the chart label.
*/}}
{{- define "nestjs.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Common labels
*/}}
{{- define "nestjs.labels" -}}
helm.sh/chart: {{ include "nestjs.chart" .context }}
{{ include "nestjs.selectorLabels"  (dict "context" .context "component" .component "name" .name) }}
{{- if .context.Chart.AppVersion }}
app.kubernetes.io/version: {{ .context.Chart.AppVersion | quote }}
{{- end }}
app.kubernetes.io/managed-by: {{ .context.Release.Service }}
app.kubernetes.io/part-of: trips
{{- end }}

{{/*
Selector labels
*/}}
{{- define "nestjs.selectorLabels" -}}
app.kubernetes.io/name: {{ include "nestjs.name" .context }}-{{ .name }}
app.kubernetes.io/instance: {{ .context.Release.Name }}
{{- if .component }}
app.kubernetes.io/component: {{ .component }}
{{- end }}
{{- end }}

{{/*
Create the name of the service account to use
*/}}
{{- define "nestjs.serviceAccountName" -}}
{{- if .Values.serviceAccount.create }}
{{- default (include "nestjs.fullname" .) .Values.serviceAccount.name }}
{{- else }}
{{- default "default" .Values.serviceAccount.name }}
{{- end }}
{{- end }}

{{/*
Create https fqdn name
*/}}
{{- define "nestjs.backend-url" -}}
{{- $host := "" -}}
{{- with (index .Values.ingress.hosts 0)  -}}
{{- $host = .host -}}
{{- end -}}
{{- print "https://" $host -}}
{{- end -}}