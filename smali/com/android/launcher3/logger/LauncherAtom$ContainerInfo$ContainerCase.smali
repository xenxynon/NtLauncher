.class public final enum Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lt1/m$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ContainerCase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;",
        ">;",
        "Lt1/m$a;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;

.field public static final enum ALL_APPS_CONTAINER:Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;

.field public static final enum CONTAINER_NOT_SET:Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;

.field public static final enum EXTENDED_CONTAINERS:Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;

.field public static final enum FOLDER:Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;

.field public static final enum HOTSEAT:Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;

.field public static final enum PREDICTED_HOTSEAT_CONTAINER:Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;

.field public static final enum PREDICTION_CONTAINER:Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;

.field public static final enum SEARCH_RESULT_CONTAINER:Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;

.field public static final enum SETTINGS_CONTAINER:Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;

.field public static final enum SHORTCUTS_CONTAINER:Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;

.field public static final enum TASK_BAR_CONTAINER:Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;

.field public static final enum TASK_SWITCHER_CONTAINER:Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;

.field public static final enum WALLPAPERS_CONTAINER:Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;

.field public static final enum WIDGETS_CONTAINER:Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;

.field public static final enum WORKSPACE:Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;


# instance fields
.field private final value:I


# direct methods
.method private static synthetic $values()[Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;
    .locals 3

    const/16 v0, 0xf

    new-array v0, v0, [Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;

    sget-object v1, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;->WORKSPACE:Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;->HOTSEAT:Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;->FOLDER:Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;->ALL_APPS_CONTAINER:Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;->WIDGETS_CONTAINER:Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;->PREDICTION_CONTAINER:Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;->SEARCH_RESULT_CONTAINER:Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;->SHORTCUTS_CONTAINER:Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;->SETTINGS_CONTAINER:Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;->PREDICTED_HOTSEAT_CONTAINER:Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;->TASK_SWITCHER_CONTAINER:Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;->TASK_BAR_CONTAINER:Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;->WALLPAPERS_CONTAINER:Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;->EXTENDED_CONTAINERS:Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;->CONTAINER_NOT_SET:Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;

    const-string v1, "WORKSPACE"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;->WORKSPACE:Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;

    new-instance v0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;

    const-string v1, "HOTSEAT"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v3, v4}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;->HOTSEAT:Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;

    new-instance v0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;

    const-string v1, "FOLDER"

    const/4 v3, 0x3

    invoke-direct {v0, v1, v4, v3}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;->FOLDER:Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;

    new-instance v0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;

    const-string v1, "ALL_APPS_CONTAINER"

    const/4 v4, 0x4

    invoke-direct {v0, v1, v3, v4}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;->ALL_APPS_CONTAINER:Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;

    new-instance v0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;

    const-string v1, "WIDGETS_CONTAINER"

    const/4 v3, 0x5

    invoke-direct {v0, v1, v4, v3}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;->WIDGETS_CONTAINER:Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;

    new-instance v0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;

    const-string v1, "PREDICTION_CONTAINER"

    const/4 v4, 0x6

    invoke-direct {v0, v1, v3, v4}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;->PREDICTION_CONTAINER:Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;

    new-instance v0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;

    const-string v1, "SEARCH_RESULT_CONTAINER"

    const/4 v3, 0x7

    invoke-direct {v0, v1, v4, v3}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;->SEARCH_RESULT_CONTAINER:Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;

    new-instance v0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;

    const-string v1, "SHORTCUTS_CONTAINER"

    const/16 v4, 0x8

    invoke-direct {v0, v1, v3, v4}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;->SHORTCUTS_CONTAINER:Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;

    new-instance v0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;

    const-string v1, "SETTINGS_CONTAINER"

    const/16 v3, 0x9

    invoke-direct {v0, v1, v4, v3}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;->SETTINGS_CONTAINER:Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;

    new-instance v0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;

    const-string v1, "PREDICTED_HOTSEAT_CONTAINER"

    const/16 v4, 0xa

    invoke-direct {v0, v1, v3, v4}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;->PREDICTED_HOTSEAT_CONTAINER:Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;

    new-instance v0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;

    const-string v1, "TASK_SWITCHER_CONTAINER"

    const/16 v3, 0xb

    invoke-direct {v0, v1, v4, v3}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;->TASK_SWITCHER_CONTAINER:Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;

    new-instance v0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;

    const-string v1, "TASK_BAR_CONTAINER"

    const/16 v4, 0xc

    invoke-direct {v0, v1, v3, v4}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;->TASK_BAR_CONTAINER:Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;

    new-instance v0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;

    const-string v1, "WALLPAPERS_CONTAINER"

    const/16 v3, 0xd

    invoke-direct {v0, v1, v4, v3}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;->WALLPAPERS_CONTAINER:Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;

    new-instance v0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;

    const-string v1, "EXTENDED_CONTAINERS"

    const/16 v4, 0x14

    invoke-direct {v0, v1, v3, v4}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;->EXTENDED_CONTAINERS:Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;

    new-instance v0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;

    const-string v1, "CONTAINER_NOT_SET"

    const/16 v3, 0xe

    invoke-direct {v0, v1, v3, v2}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;->CONTAINER_NOT_SET:Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;

    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;->$values()[Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;->$VALUES:[Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;

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

    iput p3, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;->value:I

    return-void
.end method

.method public static forNumber(I)Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;
    .locals 1

    const/16 v0, 0x14

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    sget-object p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;->WALLPAPERS_CONTAINER:Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;

    return-object p0

    :pswitch_1
    sget-object p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;->TASK_BAR_CONTAINER:Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;

    return-object p0

    :pswitch_2
    sget-object p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;->TASK_SWITCHER_CONTAINER:Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;

    return-object p0

    :pswitch_3
    sget-object p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;->PREDICTED_HOTSEAT_CONTAINER:Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;

    return-object p0

    :pswitch_4
    sget-object p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;->SETTINGS_CONTAINER:Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;

    return-object p0

    :pswitch_5
    sget-object p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;->SHORTCUTS_CONTAINER:Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;

    return-object p0

    :pswitch_6
    sget-object p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;->SEARCH_RESULT_CONTAINER:Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;

    return-object p0

    :pswitch_7
    sget-object p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;->PREDICTION_CONTAINER:Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;

    return-object p0

    :pswitch_8
    sget-object p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;->WIDGETS_CONTAINER:Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;

    return-object p0

    :pswitch_9
    sget-object p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;->ALL_APPS_CONTAINER:Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;

    return-object p0

    :pswitch_a
    sget-object p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;->FOLDER:Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;

    return-object p0

    :pswitch_b
    sget-object p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;->HOTSEAT:Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;

    return-object p0

    :pswitch_c
    sget-object p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;->WORKSPACE:Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;

    return-object p0

    :pswitch_d
    sget-object p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;->CONTAINER_NOT_SET:Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;

    return-object p0

    :cond_0
    sget-object p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;->EXTENDED_CONTAINERS:Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;
    .locals 1

    const-class v0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;

    return-object p0
.end method

.method public static values()[Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;
    .locals 1

    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;->$VALUES:[Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;

    invoke-virtual {v0}, [Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;

    return-object v0
.end method


# virtual methods
.method public getNumber()I
    .locals 0

    iget p0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;->value:I

    return p0
.end method
