.class public final synthetic Lcom/android/launcher3/j0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic g:F

.field public final synthetic h:F


# direct methods
.method public synthetic constructor <init>(FF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/launcher3/j0;->g:F

    iput p2, p0, Lcom/android/launcher3/j0;->h:F

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    iget v0, p0, Lcom/android/launcher3/j0;->g:F

    iget p0, p0, Lcom/android/launcher3/j0;->h:F

    check-cast p1, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;

    check-cast p2, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;

    invoke-static {v0, p0, p1, p2}, Lcom/android/launcher3/InvariantDeviceProfile;->i(FFLcom/android/launcher3/InvariantDeviceProfile$DisplayOption;Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;)I

    move-result p0

    return p0
.end method
