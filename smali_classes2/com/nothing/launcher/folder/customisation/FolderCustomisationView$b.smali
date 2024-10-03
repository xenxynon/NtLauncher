.class final Lcom/nothing/launcher/folder/customisation/FolderCustomisationView$b;
.super Lkotlin/jvm/internal/o;
.source "SourceFile"

# interfaces
.implements Ly5/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nothing/launcher/folder/customisation/FolderCustomisationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/o;",
        "Ly5/a<",
        "Lcom/nothing/launcher/folder/customisation/g;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic g:Lcom/nothing/launcher/folder/customisation/FolderCustomisationView;


# direct methods
.method constructor <init>(Lcom/nothing/launcher/folder/customisation/FolderCustomisationView;)V
    .locals 0

    iput-object p1, p0, Lcom/nothing/launcher/folder/customisation/FolderCustomisationView$b;->g:Lcom/nothing/launcher/folder/customisation/FolderCustomisationView;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/nothing/launcher/folder/customisation/g;
    .locals 3

    new-instance v0, Lcom/nothing/launcher/folder/customisation/g;

    iget-object v1, p0, Lcom/nothing/launcher/folder/customisation/FolderCustomisationView$b;->g:Lcom/nothing/launcher/folder/customisation/FolderCustomisationView;

    invoke-virtual {v1}, Lcom/nothing/launcher/folder/customisation/FolderCustomisationView;->getFolderIcon()Lcom/android/launcher3/folder/BaseFolderIcon;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/folder/BaseFolderIcon;->getInfo()Lcom/android/launcher3/model/data/FolderInfo;

    move-result-object v1

    new-instance v2, Lcom/nothing/launcher/folder/customisation/FolderCustomisationView$b$a;

    iget-object p0, p0, Lcom/nothing/launcher/folder/customisation/FolderCustomisationView$b;->g:Lcom/nothing/launcher/folder/customisation/FolderCustomisationView;

    invoke-direct {v2, p0}, Lcom/nothing/launcher/folder/customisation/FolderCustomisationView$b$a;-><init>(Lcom/nothing/launcher/folder/customisation/FolderCustomisationView;)V

    invoke-direct {v0, v1, v2}, Lcom/nothing/launcher/folder/customisation/g;-><init>(Lcom/android/launcher3/model/data/FolderInfo;Ly5/q;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/nothing/launcher/folder/customisation/FolderCustomisationView$b;->a()Lcom/nothing/launcher/folder/customisation/g;

    move-result-object p0

    return-object p0
.end method
