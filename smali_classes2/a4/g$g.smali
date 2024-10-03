.class final La4/g$g;
.super Lkotlin/jvm/internal/o;
.source "SourceFile"

# interfaces
.implements Ly5/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La4/g;->y(Lcom/nothing/launcher/views/NTBubbleTextView;Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/CellLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/o;",
        "Ly5/a<",
        "Ln5/t;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic g:Lcom/nothing/launcher/views/NTBubbleTextView;

.field final synthetic h:La4/g;

.field final synthetic i:Lcom/android/launcher3/model/data/ItemInfo;


# direct methods
.method constructor <init>(Lcom/nothing/launcher/views/NTBubbleTextView;La4/g;Lcom/android/launcher3/model/data/ItemInfo;)V
    .locals 0

    iput-object p1, p0, La4/g$g;->g:Lcom/nothing/launcher/views/NTBubbleTextView;

    iput-object p2, p0, La4/g$g;->h:La4/g;

    iput-object p3, p0, La4/g$g;->i:Lcom/android/launcher3/model/data/ItemInfo;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, La4/g$g;->invoke()V

    sget-object p0, Ln5/t;->a:Ln5/t;

    return-object p0
.end method

.method public final invoke()V
    .locals 3

    iget-object v0, p0, La4/g$g;->g:Lcom/nothing/launcher/views/NTBubbleTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, La4/g$g;->h:La4/g;

    iget-object v2, p0, La4/g$g;->i:Lcom/android/launcher3/model/data/ItemInfo;

    check-cast v2, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    iget-object p0, p0, La4/g$g;->g:Lcom/nothing/launcher/views/NTBubbleTextView;

    invoke-static {v0, v2, p0, v1}, La4/g;->e(La4/g;Lcom/android/launcher3/model/data/WorkspaceItemInfo;Lcom/nothing/launcher/views/NTBubbleTextView;Z)V

    return-void
.end method
