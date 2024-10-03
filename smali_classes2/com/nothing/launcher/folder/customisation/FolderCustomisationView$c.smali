.class final Lcom/nothing/launcher/folder/customisation/FolderCustomisationView$c;
.super Lkotlin/jvm/internal/o;
.source "SourceFile"

# interfaces
.implements Ly5/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nothing/launcher/folder/customisation/FolderCustomisationView;->r()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/o;",
        "Ly5/l<",
        "Ljava/lang/Integer;",
        "Ln5/t;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic g:Lcom/nothing/launcher/folder/customisation/FolderCustomisationView;


# direct methods
.method constructor <init>(Lcom/nothing/launcher/folder/customisation/FolderCustomisationView;)V
    .locals 0

    iput-object p1, p0, Lcom/nothing/launcher/folder/customisation/FolderCustomisationView$c;->g:Lcom/nothing/launcher/folder/customisation/FolderCustomisationView;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/nothing/launcher/folder/customisation/FolderCustomisationView$c;->invoke(I)V

    sget-object p0, Ln5/t;->a:Ln5/t;

    return-object p0
.end method

.method public final invoke(I)V
    .locals 2

    iget-object v0, p0, Lcom/nothing/launcher/folder/customisation/FolderCustomisationView$c;->g:Lcom/nothing/launcher/folder/customisation/FolderCustomisationView;

    invoke-static {v0}, Lcom/nothing/launcher/folder/customisation/FolderCustomisationView;->d(Lcom/nothing/launcher/folder/customisation/FolderCustomisationView;)Lcom/nothing/launcher/folder/customisation/CustomPreview;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "customPreview"

    invoke-static {v0}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/nothing/launcher/folder/customisation/CustomPreview;->setFolderType(I)V

    iget-object p1, p0, Lcom/nothing/launcher/folder/customisation/FolderCustomisationView$c;->g:Lcom/nothing/launcher/folder/customisation/FolderCustomisationView;

    invoke-static {p1}, Lcom/nothing/launcher/folder/customisation/FolderCustomisationView;->g(Lcom/nothing/launcher/folder/customisation/FolderCustomisationView;)Lcom/nothing/launcher/folder/customisation/g;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    iget-object p0, p0, Lcom/nothing/launcher/folder/customisation/FolderCustomisationView$c;->g:Lcom/nothing/launcher/folder/customisation/FolderCustomisationView;

    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-static {p0, p1, v0, v1}, Lcom/nothing/launcher/folder/customisation/FolderCustomisationView;->y(Lcom/nothing/launcher/folder/customisation/FolderCustomisationView;ZILjava/lang/Object;)V

    return-void
.end method
