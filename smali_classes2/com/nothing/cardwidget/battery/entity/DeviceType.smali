.class public final enum Lcom/nothing/cardwidget/battery/entity/DeviceType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/nothing/cardwidget/battery/entity/DeviceType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nothing/cardwidget/battery/entity/DeviceType;

.field public static final enum AIRPODS:Lcom/nothing/cardwidget/battery/entity/DeviceType;

.field public static final enum FASTPAIR_DEVICE:Lcom/nothing/cardwidget/battery/entity/DeviceType;

.field public static final enum GENERAL_BLUETOOTH:Lcom/nothing/cardwidget/battery/entity/DeviceType;

.field public static final enum NOTHINGX_DEVICE:Lcom/nothing/cardwidget/battery/entity/DeviceType;

.field public static final enum PHONE:Lcom/nothing/cardwidget/battery/entity/DeviceType;


# instance fields
.field private final type:I


# direct methods
.method private static final synthetic $values()[Lcom/nothing/cardwidget/battery/entity/DeviceType;
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/nothing/cardwidget/battery/entity/DeviceType;

    sget-object v1, Lcom/nothing/cardwidget/battery/entity/DeviceType;->PHONE:Lcom/nothing/cardwidget/battery/entity/DeviceType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/nothing/cardwidget/battery/entity/DeviceType;->NOTHINGX_DEVICE:Lcom/nothing/cardwidget/battery/entity/DeviceType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/nothing/cardwidget/battery/entity/DeviceType;->FASTPAIR_DEVICE:Lcom/nothing/cardwidget/battery/entity/DeviceType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/nothing/cardwidget/battery/entity/DeviceType;->GENERAL_BLUETOOTH:Lcom/nothing/cardwidget/battery/entity/DeviceType;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/nothing/cardwidget/battery/entity/DeviceType;->AIRPODS:Lcom/nothing/cardwidget/battery/entity/DeviceType;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/nothing/cardwidget/battery/entity/DeviceType;

    const-string v1, "PHONE"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/nothing/cardwidget/battery/entity/DeviceType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nothing/cardwidget/battery/entity/DeviceType;->PHONE:Lcom/nothing/cardwidget/battery/entity/DeviceType;

    new-instance v0, Lcom/nothing/cardwidget/battery/entity/DeviceType;

    const-string v1, "NOTHINGX_DEVICE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v3, v2}, Lcom/nothing/cardwidget/battery/entity/DeviceType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nothing/cardwidget/battery/entity/DeviceType;->NOTHINGX_DEVICE:Lcom/nothing/cardwidget/battery/entity/DeviceType;

    new-instance v0, Lcom/nothing/cardwidget/battery/entity/DeviceType;

    const-string v1, "FASTPAIR_DEVICE"

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Lcom/nothing/cardwidget/battery/entity/DeviceType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nothing/cardwidget/battery/entity/DeviceType;->FASTPAIR_DEVICE:Lcom/nothing/cardwidget/battery/entity/DeviceType;

    new-instance v0, Lcom/nothing/cardwidget/battery/entity/DeviceType;

    const-string v1, "GENERAL_BLUETOOTH"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v3, v2}, Lcom/nothing/cardwidget/battery/entity/DeviceType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nothing/cardwidget/battery/entity/DeviceType;->GENERAL_BLUETOOTH:Lcom/nothing/cardwidget/battery/entity/DeviceType;

    new-instance v0, Lcom/nothing/cardwidget/battery/entity/DeviceType;

    const-string v1, "AIRPODS"

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/nothing/cardwidget/battery/entity/DeviceType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nothing/cardwidget/battery/entity/DeviceType;->AIRPODS:Lcom/nothing/cardwidget/battery/entity/DeviceType;

    invoke-static {}, Lcom/nothing/cardwidget/battery/entity/DeviceType;->$values()[Lcom/nothing/cardwidget/battery/entity/DeviceType;

    move-result-object v0

    sput-object v0, Lcom/nothing/cardwidget/battery/entity/DeviceType;->$VALUES:[Lcom/nothing/cardwidget/battery/entity/DeviceType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/nothing/cardwidget/battery/entity/DeviceType;->type:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nothing/cardwidget/battery/entity/DeviceType;
    .locals 1

    const-class v0, Lcom/nothing/cardwidget/battery/entity/DeviceType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/nothing/cardwidget/battery/entity/DeviceType;

    return-object p0
.end method

.method public static values()[Lcom/nothing/cardwidget/battery/entity/DeviceType;
    .locals 1

    sget-object v0, Lcom/nothing/cardwidget/battery/entity/DeviceType;->$VALUES:[Lcom/nothing/cardwidget/battery/entity/DeviceType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nothing/cardwidget/battery/entity/DeviceType;

    return-object v0
.end method


# virtual methods
.method public final getType()I
    .locals 0

    iget p0, p0, Lcom/nothing/cardwidget/battery/entity/DeviceType;->type:I

    return p0
.end method
