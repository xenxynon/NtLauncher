.class public final synthetic Lcom/android/launcher3/m0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic a:Lcom/android/launcher3/InvariantDeviceProfile;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/InvariantDeviceProfile;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/m0;->a:Lcom/android/launcher3/InvariantDeviceProfile;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/m0;->a:Lcom/android/launcher3/InvariantDeviceProfile;

    check-cast p1, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;

    invoke-static {p0, p1}, Lcom/android/launcher3/InvariantDeviceProfile;->d(Lcom/android/launcher3/InvariantDeviceProfile;Lcom/android/launcher3/InvariantDeviceProfile$GridOption;)Z

    move-result p0

    return p0
.end method
