[void][reflection.assembly]::LoadWithPartialName(
    "System.Windows.Forms")
$form = New-Object Windows.Forms.Form
$form.Text = "Meu primeiro Form"
$button = New-Object Windows.Forms.Button
$button.Text = "Pressione aqui"
$button.Dock = "Fill"
$button.add_click({$form.close()})
$form.Controls.add($button)
$form.add_Shown({$form.Activate()})
$form.ShowDialog()