.class public final Lcom/android/launcher3/util/DimensionUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/android/launcher3/util/DimensionUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/launcher3/util/DimensionUtils;

    invoke-direct {v0}, Lcom/android/launcher3/util/DimensionUtils;-><init>()V

    sput-object v0, Lcom/android/launcher3/util/DimensionUtils;->INSTANCE:Lcom/android/launcher3/util/DimensionUtils;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getTaskbarPhoneDimensions(Lcom/android/launcher3/DeviceProfile;Landroid/content/res/Resources;Z)Landroid/graphics/Point;
    .locals 2

    const-string v0, "deviceProfile"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "res"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    const/4 v1, -0x1

    if-nez p2, :cond_0

    iput v1, v0, Landroid/graphics/Point;->x:I

    iget p0, p0, Lcom/android/launcher3/DeviceProfile;->taskbarHeight:I

    iput p0, v0, Landroid/graphics/Point;->y:I

    return-object v0

    :cond_0
    iget-boolean p2, p0, Lcom/android/launcher3/DeviceProfile;->isGestureMode:Z

    if-eqz p2, :cond_1

    iput v1, v0, Landroid/graphics/Point;->x:I

    const p0, 0x7f070559

    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    iput p0, v0, Landroid/graphics/Point;->y:I

    return-object v0

    :cond_1
    iget-boolean p0, p0, Lcom/android/launcher3/DeviceProfile;->isLandscape:Z

    const p2, 0x7f070553

    if-nez p0, :cond_2

    iput v1, v0, Landroid/graphics/Point;->x:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    iput p0, v0, Landroid/graphics/Point;->y:I

    return-object v0

    :cond_2
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    iput p0, v0, Landroid/graphics/Point;->x:I

    iput v1, v0, Landroid/graphics/Point;->y:I

    return-object v0
.end method
