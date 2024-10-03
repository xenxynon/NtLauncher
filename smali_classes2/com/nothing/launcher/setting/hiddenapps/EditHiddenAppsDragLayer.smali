.class public final Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsDragLayer;
.super Lcom/android/launcher3/views/BaseDragLayer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsDragLayer$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/launcher3/views/BaseDragLayer<",
        "Lo4/a;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/views/BaseDragLayer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0}, Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsDragLayer;->recreateControllers()V

    return-void
.end method


# virtual methods
.method public recreateControllers()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsDragLayer$a;

    new-instance v1, Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsDragLayer$a;

    invoke-direct {v1}, Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsDragLayer$a;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/android/launcher3/views/BaseDragLayer;->mControllers:[Lcom/android/launcher3/util/TouchController;

    return-void
.end method
