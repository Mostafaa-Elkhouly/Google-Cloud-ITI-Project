resource "google_project_iam_custom_role" "artifact-registry-role" {
  role_id     = "artifactRegistryRole"
  title       = "Artifact Registry Custom Role"
  description = "Create and manage repositories and artifacts."
  permissions = [
  "artifactregistry.repositories.create",
  "artifactregistry.repositories.delete",
  "artifactregistry.repositories.deleteArtifacts",
  "artifactregistry.versions.delete",
  "artifactregistry.dockerimages.get",
  "artifactregistry.dockerimages.list"
  ]

}
