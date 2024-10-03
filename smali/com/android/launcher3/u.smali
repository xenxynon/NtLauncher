.class public final synthetic Lcom/android/launcher3/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/DeviceProfile$ViewScaleProvider;


# static fields
.field public static final synthetic a:Lcom/android/launcher3/u;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/launcher3/u;

    invoke-direct {v0}, Lcom/android/launcher3/u;-><init>()V

    sput-object v0, Lcom/android/launcher3/u;->a:Lcom/android/launcher3/u;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getScaleFromItemInfo(Lcom/android/launcher3/model/data/ItemInfo;)Landroid/graphics/PointF;
    .locals 0

    invoke-static {p1}, Lcom/android/launcher3/DeviceProfile;->b(Lcom/android/launcher3/model/data/ItemInfo;)Landroid/graphics/PointF;

    move-result-object p0

    return-object p0
.end method
