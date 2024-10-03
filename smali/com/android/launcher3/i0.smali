.class public final synthetic Lcom/android/launcher3/i0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic g:Lcom/android/launcher3/InvariantDeviceProfile;

.field public final synthetic h:Landroid/content/Context;

.field public final synthetic i:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/InvariantDeviceProfile;Landroid/content/Context;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/i0;->g:Lcom/android/launcher3/InvariantDeviceProfile;

    iput-object p2, p0, Lcom/android/launcher3/i0;->h:Landroid/content/Context;

    iput-boolean p3, p0, Lcom/android/launcher3/i0;->i:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/i0;->g:Lcom/android/launcher3/InvariantDeviceProfile;

    iget-object v1, p0, Lcom/android/launcher3/i0;->h:Landroid/content/Context;

    iget-boolean p0, p0, Lcom/android/launcher3/i0;->i:Z

    invoke-static {v0, v1, p0}, Lcom/android/launcher3/InvariantDeviceProfile;->m(Lcom/android/launcher3/InvariantDeviceProfile;Landroid/content/Context;Z)V

    return-void
.end method
