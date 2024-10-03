.class final La4/g$h;
.super Lkotlin/jvm/internal/o;
.source "SourceFile"

# interfaces
.implements Ly5/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La4/g;->z(Lcom/nothing/launcher/views/NTBubbleTextView;Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/CellLayout;)V
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
.field final synthetic g:Lcom/android/launcher3/model/data/ItemInfo;

.field final synthetic h:La4/g;

.field final synthetic i:Lcom/nothing/launcher/views/NTBubbleTextView;


# direct methods
.method constructor <init>(Lcom/android/launcher3/model/data/ItemInfo;La4/g;Lcom/nothing/launcher/views/NTBubbleTextView;)V
    .locals 0

    iput-object p1, p0, La4/g$h;->g:Lcom/android/launcher3/model/data/ItemInfo;

    iput-object p2, p0, La4/g$h;->h:La4/g;

    iput-object p3, p0, La4/g$h;->i:Lcom/nothing/launcher/views/NTBubbleTextView;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, La4/g$h;->invoke()V

    sget-object p0, Ln5/t;->a:Ln5/t;

    return-object p0
.end method

.method public final invoke()V
    .locals 4

    iget-object v0, p0, La4/g$h;->g:Lcom/android/launcher3/model/data/ItemInfo;

    const-string v1, "null cannot be cast to non-null type com.android.launcher3.model.data.WorkspaceItemInfo"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/n;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    iget-object v1, p0, La4/g$h;->h:La4/g;

    iget-object v2, p0, La4/g$h;->g:Lcom/android/launcher3/model/data/ItemInfo;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, La4/g;->b(La4/g;Lcom/android/launcher3/model/data/ItemInfo;Z)Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object v1

    iput-object v1, v0, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    iget-object v1, p0, La4/g$h;->i:Lcom/nothing/launcher/views/NTBubbleTextView;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, La4/g$h;->h:La4/g;

    iget-object p0, p0, La4/g$h;->i:Lcom/nothing/launcher/views/NTBubbleTextView;

    const/4 v2, 0x1

    invoke-static {v1, v0, p0, v2}, La4/g;->e(La4/g;Lcom/android/launcher3/model/data/WorkspaceItemInfo;Lcom/nothing/launcher/views/NTBubbleTextView;Z)V

    return-void
.end method
