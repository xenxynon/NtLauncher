.class public Lcom/nothing/launcher/popup/l$e;
.super Lcom/nothing/launcher/popup/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nothing/launcher/popup/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nothing/launcher/popup/l<",
        "Lcom/android/launcher3/Launcher;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)V
    .locals 6

    const v1, 0x7f08037a

    const v2, 0x7f1200f5

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/nothing/launcher/popup/l;-><init>(IILandroid/content/Context;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/nothing/launcher/popup/l;->q(Z)V

    iget-object p0, p0, Lcom/nothing/launcher/popup/l;->h:Landroid/view/View;

    instance-of p1, p0, Lcom/android/launcher3/folder/BaseFolderIcon;

    if-eqz p1, :cond_0

    check-cast p0, Lcom/android/launcher3/folder/BaseFolderIcon;

    invoke-virtual {p0}, Lcom/android/launcher3/folder/BaseFolderIcon;->getFolder()Lcom/android/launcher3/folder/Folder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->animateOpenCompleteWithKeyboard()V

    :cond_0
    return-void
.end method
