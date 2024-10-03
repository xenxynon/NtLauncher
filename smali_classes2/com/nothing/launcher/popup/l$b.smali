.class public Lcom/nothing/launcher/popup/l$b;
.super Lcom/nothing/launcher/popup/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nothing/launcher/popup/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nothing/launcher/popup/l<",
        "Lq2/m;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lq2/m;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)V
    .locals 6

    const v1, 0x7f080381

    const v2, 0x7f1200d9

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/nothing/launcher/popup/l;-><init>(IILandroid/content/Context;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/nothing/launcher/popup/l;->g:Lcom/nothing/launcher/popup/NTPopupContainer;

    invoke-virtual {p1}, Lcom/nothing/launcher/popup/b;->hideHighlightIconView()V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/nothing/launcher/popup/l;->q(Z)V

    iget-object p1, p0, Lcom/android/launcher3/popup/SystemShortcut;->mTarget:Landroid/content/Context;

    check-cast p1, Lq2/m;

    invoke-virtual {p1}, Lq2/m;->getResizeManager()La4/g;

    move-result-object p1

    iget-object v0, p0, Lcom/nothing/launcher/popup/l;->h:Landroid/view/View;

    invoke-virtual {p1, v0}, La4/g;->A(Landroid/view/View;)V

    sget-object p1, Ly4/e;->h:Ly4/e;

    iget-object p0, p0, Lcom/android/launcher3/popup/SystemShortcut;->mItemInfo:Lcom/android/launcher3/model/data/ItemInfo;

    invoke-virtual {p1, p0}, Ly4/e;->d(Lcom/android/launcher3/model/data/ItemInfo;)V

    return-void
.end method
