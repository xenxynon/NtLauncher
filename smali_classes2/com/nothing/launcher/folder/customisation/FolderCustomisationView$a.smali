.class public final Lcom/nothing/launcher/folder/customisation/FolderCustomisationView$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nothing/launcher/folder/customisation/FolderCustomisationView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/i;)V
    .locals 0

    invoke-direct {p0}, Lcom/nothing/launcher/folder/customisation/FolderCustomisationView$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/launcher3/Launcher;ZLcom/android/launcher3/folder/BaseFolderIcon;)Lcom/nothing/launcher/folder/customisation/FolderCustomisationView;
    .locals 3

    const-string p0, "launcher"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "folderIcon"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p0

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/NTDragLayer;

    move-result-object v0

    const v1, 0x7f0e007f

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    const-string v0, "null cannot be cast to non-null type com.nothing.launcher.folder.customisation.FolderCustomisationView"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/n;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/nothing/launcher/folder/customisation/FolderCustomisationView;

    invoke-static {p0}, Lcom/nothing/launcher/folder/customisation/FolderCustomisationView;->c(Lcom/nothing/launcher/folder/customisation/FolderCustomisationView;)V

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/nothing/launcher/folder/customisation/FolderCustomisationView;->o(Lcom/nothing/launcher/folder/customisation/FolderCustomisationView;Z)V

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v0

    const-string v1, "launcher.workspace"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/nothing/launcher/folder/customisation/FolderCustomisationView;->p(Lcom/nothing/launcher/folder/customisation/FolderCustomisationView;Lcom/android/launcher3/Workspace;)V

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/Hotseat;

    move-result-object p1

    const-string v0, "launcher.hotseat"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/nothing/launcher/folder/customisation/FolderCustomisationView;->n(Lcom/nothing/launcher/folder/customisation/FolderCustomisationView;Lcom/android/launcher3/Hotseat;)V

    invoke-static {p0, p3}, Lcom/nothing/launcher/folder/customisation/FolderCustomisationView;->i(Lcom/nothing/launcher/folder/customisation/FolderCustomisationView;Lcom/android/launcher3/folder/BaseFolderIcon;)V

    invoke-static {p0}, Lcom/nothing/launcher/folder/customisation/FolderCustomisationView;->j(Lcom/nothing/launcher/folder/customisation/FolderCustomisationView;)V

    invoke-static {p0}, Lcom/nothing/launcher/folder/customisation/FolderCustomisationView;->k(Lcom/nothing/launcher/folder/customisation/FolderCustomisationView;)V

    invoke-static {p0, p2}, Lcom/nothing/launcher/folder/customisation/FolderCustomisationView;->l(Lcom/nothing/launcher/folder/customisation/FolderCustomisationView;Z)V

    return-object p0
.end method
