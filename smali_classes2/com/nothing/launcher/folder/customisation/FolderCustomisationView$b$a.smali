.class final Lcom/nothing/launcher/folder/customisation/FolderCustomisationView$b$a;
.super Lkotlin/jvm/internal/o;
.source "SourceFile"

# interfaces
.implements Ly5/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nothing/launcher/folder/customisation/FolderCustomisationView$b;->a()Lcom/nothing/launcher/folder/customisation/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/o;",
        "Ly5/q<",
        "Ljava/lang/Boolean;",
        "Ljava/lang/String;",
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

    iput-object p1, p0, Lcom/nothing/launcher/folder/customisation/FolderCustomisationView$b$a;->g:Lcom/nothing/launcher/folder/customisation/FolderCustomisationView;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(ZLjava/lang/String;I)V
    .locals 1

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/nothing/launcher/folder/customisation/FolderCustomisationView$b$a;->g:Lcom/nothing/launcher/folder/customisation/FolderCustomisationView;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/nothing/launcher/folder/customisation/FolderCustomisationView;->m(Lcom/nothing/launcher/folder/customisation/FolderCustomisationView;Z)V

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/nothing/launcher/folder/customisation/FolderCustomisationView$b$a;->g:Lcom/nothing/launcher/folder/customisation/FolderCustomisationView;

    invoke-static {p1}, Lcom/nothing/launcher/folder/customisation/FolderCustomisationView;->f(Lcom/nothing/launcher/folder/customisation/FolderCustomisationView;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_1

    const-string p1, "folderCoverRecycleView"

    invoke-static {p1}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    move-object p1, v0

    :cond_1
    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    iget-object p1, p0, Lcom/nothing/launcher/folder/customisation/FolderCustomisationView$b$a;->g:Lcom/nothing/launcher/folder/customisation/FolderCustomisationView;

    invoke-static {p1}, Lcom/nothing/launcher/folder/customisation/FolderCustomisationView;->e(Lcom/nothing/launcher/folder/customisation/FolderCustomisationView;)Lcom/nothing/launcher/folder/customisation/CustomTypeSelectView;

    move-result-object p1

    if-nez p1, :cond_2

    const-string p1, "customTypeSelectView"

    invoke-static {p1}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    move-object p1, v0

    :cond_2
    invoke-virtual {p1}, Lcom/nothing/launcher/folder/customisation/CustomTypeSelectView;->e()V

    iget-object p0, p0, Lcom/nothing/launcher/folder/customisation/FolderCustomisationView$b$a;->g:Lcom/nothing/launcher/folder/customisation/FolderCustomisationView;

    invoke-static {p0}, Lcom/nothing/launcher/folder/customisation/FolderCustomisationView;->d(Lcom/nothing/launcher/folder/customisation/FolderCustomisationView;)Lcom/nothing/launcher/folder/customisation/CustomPreview;

    move-result-object p0

    if-nez p0, :cond_3

    const-string p0, "customPreview"

    invoke-static {p0}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move-object v0, p0

    :goto_0
    invoke-virtual {v0, p2}, Lcom/nothing/launcher/folder/customisation/CustomPreview;->setCoverValue(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    check-cast p2, Ljava/lang/String;

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/nothing/launcher/folder/customisation/FolderCustomisationView$b$a;->a(ZLjava/lang/String;I)V

    sget-object p0, Ln5/t;->a:Ln5/t;

    return-object p0
.end method
