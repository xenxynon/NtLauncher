.class public final Lcom/nothing/launcher/folder/customisation/FolderCustomisationView$d;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nothing/launcher/folder/customisation/FolderCustomisationView;->open(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic g:Lcom/nothing/launcher/folder/customisation/FolderCustomisationView;


# direct methods
.method constructor <init>(Lcom/nothing/launcher/folder/customisation/FolderCustomisationView;)V
    .locals 0

    iput-object p1, p0, Lcom/nothing/launcher/folder/customisation/FolderCustomisationView$d;->g:Lcom/nothing/launcher/folder/customisation/FolderCustomisationView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/nothing/launcher/folder/customisation/FolderCustomisationView$d;->g:Lcom/nothing/launcher/folder/customisation/FolderCustomisationView;

    invoke-static {p1}, Lcom/nothing/launcher/folder/customisation/FolderCustomisationView;->h(Lcom/nothing/launcher/folder/customisation/FolderCustomisationView;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/animation/ObjectAnimator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    iget-object p0, p0, Lcom/nothing/launcher/folder/customisation/FolderCustomisationView$d;->g:Lcom/nothing/launcher/folder/customisation/FolderCustomisationView;

    invoke-virtual {p0}, Lcom/nothing/launcher/folder/customisation/FolderCustomisationView;->getFolderIcon()Lcom/android/launcher3/folder/BaseFolderIcon;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/folder/BaseFolderIcon;->setIconVisible(Z)V

    return-void
.end method
