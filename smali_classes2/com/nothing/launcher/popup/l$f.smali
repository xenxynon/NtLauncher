.class public Lcom/nothing/launcher/popup/l$f;
.super Lcom/nothing/launcher/popup/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nothing/launcher/popup/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nothing/launcher/popup/l<",
        "Lcom/android/launcher3/BaseDraggingActivity;",
        ">;"
    }
.end annotation


# instance fields
.field private final o:Landroid/content/ComponentName;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/BaseDraggingActivity;Lcom/android/launcher3/model/data/ItemInfo;Landroid/content/ComponentName;Landroid/view/View;)V
    .locals 6

    const v1, 0x7f08037d

    const v2, 0x7f12027b

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/nothing/launcher/popup/l;-><init>(IILandroid/content/Context;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)V

    iput-object p3, p0, Lcom/nothing/launcher/popup/l$f;->o:Landroid/content/ComponentName;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    sget-object v0, Lz4/b;->a:Lz4/b;

    iget-object v1, p0, Lcom/android/launcher3/popup/SystemShortcut;->mTarget:Landroid/content/Context;

    check-cast v1, Lcom/android/launcher3/BaseDraggingActivity;

    iget-object v2, p0, Lcom/android/launcher3/popup/SystemShortcut;->mItemInfo:Lcom/android/launcher3/model/data/ItemInfo;

    iget-object v3, p0, Lcom/nothing/launcher/popup/l$f;->o:Landroid/content/ComponentName;

    invoke-virtual {v0, v1, v2, v3, p1}, Lz4/b;->d(Landroid/content/Context;Lcom/android/launcher3/model/data/ItemInfo;Landroid/content/ComponentName;Landroid/view/View;)Landroid/content/ComponentName;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/nothing/launcher/popup/l;->q(Z)V

    return-void
.end method
