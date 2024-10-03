.class public final enum Lcom/android/launcher3/logger/LauncherAtom$ToState;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lt1/m$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/launcher3/logger/LauncherAtom$ToState;",
        ">;",
        "Lt1/m$a;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/launcher3/logger/LauncherAtom$ToState;

.field public static final enum TO_CUSTOM_WITH_EMPTY_SUGGESTIONS:Lcom/android/launcher3/logger/LauncherAtom$ToState;

.field public static final enum TO_CUSTOM_WITH_SUGGESTIONS_DISABLED:Lcom/android/launcher3/logger/LauncherAtom$ToState;

.field public static final enum TO_CUSTOM_WITH_VALID_PRIMARY:Lcom/android/launcher3/logger/LauncherAtom$ToState;

.field public static final enum TO_CUSTOM_WITH_VALID_SUGGESTIONS_AND_EMPTY_PRIMARY:Lcom/android/launcher3/logger/LauncherAtom$ToState;

.field public static final enum TO_EMPTY_WITH_EMPTY_SUGGESTIONS:Lcom/android/launcher3/logger/LauncherAtom$ToState;

.field public static final enum TO_EMPTY_WITH_SUGGESTIONS_DISABLED:Lcom/android/launcher3/logger/LauncherAtom$ToState;

.field public static final enum TO_EMPTY_WITH_VALID_PRIMARY:Lcom/android/launcher3/logger/LauncherAtom$ToState;

.field public static final enum TO_EMPTY_WITH_VALID_SUGGESTIONS_AND_EMPTY_PRIMARY:Lcom/android/launcher3/logger/LauncherAtom$ToState;

.field public static final enum TO_STATE_UNSPECIFIED:Lcom/android/launcher3/logger/LauncherAtom$ToState;

.field public static final enum TO_SUGGESTION0:Lcom/android/launcher3/logger/LauncherAtom$ToState;

.field public static final enum TO_SUGGESTION1_WITH_EMPTY_PRIMARY:Lcom/android/launcher3/logger/LauncherAtom$ToState;

.field public static final enum TO_SUGGESTION1_WITH_VALID_PRIMARY:Lcom/android/launcher3/logger/LauncherAtom$ToState;

.field public static final enum TO_SUGGESTION2_WITH_EMPTY_PRIMARY:Lcom/android/launcher3/logger/LauncherAtom$ToState;

.field public static final enum TO_SUGGESTION2_WITH_VALID_PRIMARY:Lcom/android/launcher3/logger/LauncherAtom$ToState;

.field public static final enum TO_SUGGESTION3_WITH_EMPTY_PRIMARY:Lcom/android/launcher3/logger/LauncherAtom$ToState;

.field public static final enum TO_SUGGESTION3_WITH_VALID_PRIMARY:Lcom/android/launcher3/logger/LauncherAtom$ToState;

.field public static final enum UNCHANGED:Lcom/android/launcher3/logger/LauncherAtom$ToState;

.field private static final internalValueMap:Lt1/m$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lt1/m$b<",
            "Lcom/android/launcher3/logger/LauncherAtom$ToState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method private static synthetic $values()[Lcom/android/launcher3/logger/LauncherAtom$ToState;
    .locals 3

    const/16 v0, 0x11

    new-array v0, v0, [Lcom/android/launcher3/logger/LauncherAtom$ToState;

    sget-object v1, Lcom/android/launcher3/logger/LauncherAtom$ToState;->TO_STATE_UNSPECIFIED:Lcom/android/launcher3/logger/LauncherAtom$ToState;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/launcher3/logger/LauncherAtom$ToState;->UNCHANGED:Lcom/android/launcher3/logger/LauncherAtom$ToState;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/launcher3/logger/LauncherAtom$ToState;->TO_SUGGESTION0:Lcom/android/launcher3/logger/LauncherAtom$ToState;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/launcher3/logger/LauncherAtom$ToState;->TO_SUGGESTION1_WITH_VALID_PRIMARY:Lcom/android/launcher3/logger/LauncherAtom$ToState;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/launcher3/logger/LauncherAtom$ToState;->TO_SUGGESTION1_WITH_EMPTY_PRIMARY:Lcom/android/launcher3/logger/LauncherAtom$ToState;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/launcher3/logger/LauncherAtom$ToState;->TO_SUGGESTION2_WITH_VALID_PRIMARY:Lcom/android/launcher3/logger/LauncherAtom$ToState;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/launcher3/logger/LauncherAtom$ToState;->TO_SUGGESTION2_WITH_EMPTY_PRIMARY:Lcom/android/launcher3/logger/LauncherAtom$ToState;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/launcher3/logger/LauncherAtom$ToState;->TO_SUGGESTION3_WITH_VALID_PRIMARY:Lcom/android/launcher3/logger/LauncherAtom$ToState;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/launcher3/logger/LauncherAtom$ToState;->TO_SUGGESTION3_WITH_EMPTY_PRIMARY:Lcom/android/launcher3/logger/LauncherAtom$ToState;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/launcher3/logger/LauncherAtom$ToState;->TO_EMPTY_WITH_VALID_PRIMARY:Lcom/android/launcher3/logger/LauncherAtom$ToState;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/launcher3/logger/LauncherAtom$ToState;->TO_EMPTY_WITH_VALID_SUGGESTIONS_AND_EMPTY_PRIMARY:Lcom/android/launcher3/logger/LauncherAtom$ToState;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/launcher3/logger/LauncherAtom$ToState;->TO_EMPTY_WITH_EMPTY_SUGGESTIONS:Lcom/android/launcher3/logger/LauncherAtom$ToState;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/launcher3/logger/LauncherAtom$ToState;->TO_EMPTY_WITH_SUGGESTIONS_DISABLED:Lcom/android/launcher3/logger/LauncherAtom$ToState;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/launcher3/logger/LauncherAtom$ToState;->TO_CUSTOM_WITH_VALID_PRIMARY:Lcom/android/launcher3/logger/LauncherAtom$ToState;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/launcher3/logger/LauncherAtom$ToState;->TO_CUSTOM_WITH_VALID_SUGGESTIONS_AND_EMPTY_PRIMARY:Lcom/android/launcher3/logger/LauncherAtom$ToState;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/launcher3/logger/LauncherAtom$ToState;->TO_CUSTOM_WITH_EMPTY_SUGGESTIONS:Lcom/android/launcher3/logger/LauncherAtom$ToState;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/launcher3/logger/LauncherAtom$ToState;->TO_CUSTOM_WITH_SUGGESTIONS_DISABLED:Lcom/android/launcher3/logger/LauncherAtom$ToState;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/android/launcher3/logger/LauncherAtom$ToState;

    const-string v1, "TO_STATE_UNSPECIFIED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/android/launcher3/logger/LauncherAtom$ToState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/launcher3/logger/LauncherAtom$ToState;->TO_STATE_UNSPECIFIED:Lcom/android/launcher3/logger/LauncherAtom$ToState;

    new-instance v0, Lcom/android/launcher3/logger/LauncherAtom$ToState;

    const-string v1, "UNCHANGED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/android/launcher3/logger/LauncherAtom$ToState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/launcher3/logger/LauncherAtom$ToState;->UNCHANGED:Lcom/android/launcher3/logger/LauncherAtom$ToState;

    new-instance v0, Lcom/android/launcher3/logger/LauncherAtom$ToState;

    const-string v1, "TO_SUGGESTION0"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lcom/android/launcher3/logger/LauncherAtom$ToState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/launcher3/logger/LauncherAtom$ToState;->TO_SUGGESTION0:Lcom/android/launcher3/logger/LauncherAtom$ToState;

    new-instance v0, Lcom/android/launcher3/logger/LauncherAtom$ToState;

    const-string v1, "TO_SUGGESTION1_WITH_VALID_PRIMARY"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v2}, Lcom/android/launcher3/logger/LauncherAtom$ToState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/launcher3/logger/LauncherAtom$ToState;->TO_SUGGESTION1_WITH_VALID_PRIMARY:Lcom/android/launcher3/logger/LauncherAtom$ToState;

    new-instance v0, Lcom/android/launcher3/logger/LauncherAtom$ToState;

    const-string v1, "TO_SUGGESTION1_WITH_EMPTY_PRIMARY"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v2}, Lcom/android/launcher3/logger/LauncherAtom$ToState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/launcher3/logger/LauncherAtom$ToState;->TO_SUGGESTION1_WITH_EMPTY_PRIMARY:Lcom/android/launcher3/logger/LauncherAtom$ToState;

    new-instance v0, Lcom/android/launcher3/logger/LauncherAtom$ToState;

    const-string v1, "TO_SUGGESTION2_WITH_VALID_PRIMARY"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v2}, Lcom/android/launcher3/logger/LauncherAtom$ToState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/launcher3/logger/LauncherAtom$ToState;->TO_SUGGESTION2_WITH_VALID_PRIMARY:Lcom/android/launcher3/logger/LauncherAtom$ToState;

    new-instance v0, Lcom/android/launcher3/logger/LauncherAtom$ToState;

    const-string v1, "TO_SUGGESTION2_WITH_EMPTY_PRIMARY"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2, v2}, Lcom/android/launcher3/logger/LauncherAtom$ToState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/launcher3/logger/LauncherAtom$ToState;->TO_SUGGESTION2_WITH_EMPTY_PRIMARY:Lcom/android/launcher3/logger/LauncherAtom$ToState;

    new-instance v0, Lcom/android/launcher3/logger/LauncherAtom$ToState;

    const-string v1, "TO_SUGGESTION3_WITH_VALID_PRIMARY"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2, v2}, Lcom/android/launcher3/logger/LauncherAtom$ToState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/launcher3/logger/LauncherAtom$ToState;->TO_SUGGESTION3_WITH_VALID_PRIMARY:Lcom/android/launcher3/logger/LauncherAtom$ToState;

    new-instance v0, Lcom/android/launcher3/logger/LauncherAtom$ToState;

    const-string v1, "TO_SUGGESTION3_WITH_EMPTY_PRIMARY"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2, v2}, Lcom/android/launcher3/logger/LauncherAtom$ToState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/launcher3/logger/LauncherAtom$ToState;->TO_SUGGESTION3_WITH_EMPTY_PRIMARY:Lcom/android/launcher3/logger/LauncherAtom$ToState;

    new-instance v0, Lcom/android/launcher3/logger/LauncherAtom$ToState;

    const-string v1, "TO_EMPTY_WITH_VALID_PRIMARY"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2, v2}, Lcom/android/launcher3/logger/LauncherAtom$ToState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/launcher3/logger/LauncherAtom$ToState;->TO_EMPTY_WITH_VALID_PRIMARY:Lcom/android/launcher3/logger/LauncherAtom$ToState;

    new-instance v0, Lcom/android/launcher3/logger/LauncherAtom$ToState;

    const-string v1, "TO_EMPTY_WITH_VALID_SUGGESTIONS_AND_EMPTY_PRIMARY"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2, v2}, Lcom/android/launcher3/logger/LauncherAtom$ToState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/launcher3/logger/LauncherAtom$ToState;->TO_EMPTY_WITH_VALID_SUGGESTIONS_AND_EMPTY_PRIMARY:Lcom/android/launcher3/logger/LauncherAtom$ToState;

    new-instance v0, Lcom/android/launcher3/logger/LauncherAtom$ToState;

    const-string v1, "TO_EMPTY_WITH_EMPTY_SUGGESTIONS"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2, v2}, Lcom/android/launcher3/logger/LauncherAtom$ToState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/launcher3/logger/LauncherAtom$ToState;->TO_EMPTY_WITH_EMPTY_SUGGESTIONS:Lcom/android/launcher3/logger/LauncherAtom$ToState;

    new-instance v0, Lcom/android/launcher3/logger/LauncherAtom$ToState;

    const-string v1, "TO_EMPTY_WITH_SUGGESTIONS_DISABLED"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2, v2}, Lcom/android/launcher3/logger/LauncherAtom$ToState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/launcher3/logger/LauncherAtom$ToState;->TO_EMPTY_WITH_SUGGESTIONS_DISABLED:Lcom/android/launcher3/logger/LauncherAtom$ToState;

    new-instance v0, Lcom/android/launcher3/logger/LauncherAtom$ToState;

    const-string v1, "TO_CUSTOM_WITH_VALID_PRIMARY"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2, v2}, Lcom/android/launcher3/logger/LauncherAtom$ToState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/launcher3/logger/LauncherAtom$ToState;->TO_CUSTOM_WITH_VALID_PRIMARY:Lcom/android/launcher3/logger/LauncherAtom$ToState;

    new-instance v0, Lcom/android/launcher3/logger/LauncherAtom$ToState;

    const-string v1, "TO_CUSTOM_WITH_VALID_SUGGESTIONS_AND_EMPTY_PRIMARY"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2, v2}, Lcom/android/launcher3/logger/LauncherAtom$ToState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/launcher3/logger/LauncherAtom$ToState;->TO_CUSTOM_WITH_VALID_SUGGESTIONS_AND_EMPTY_PRIMARY:Lcom/android/launcher3/logger/LauncherAtom$ToState;

    new-instance v0, Lcom/android/launcher3/logger/LauncherAtom$ToState;

    const-string v1, "TO_CUSTOM_WITH_EMPTY_SUGGESTIONS"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2, v2}, Lcom/android/launcher3/logger/LauncherAtom$ToState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/launcher3/logger/LauncherAtom$ToState;->TO_CUSTOM_WITH_EMPTY_SUGGESTIONS:Lcom/android/launcher3/logger/LauncherAtom$ToState;

    new-instance v0, Lcom/android/launcher3/logger/LauncherAtom$ToState;

    const-string v1, "TO_CUSTOM_WITH_SUGGESTIONS_DISABLED"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2, v2}, Lcom/android/launcher3/logger/LauncherAtom$ToState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/launcher3/logger/LauncherAtom$ToState;->TO_CUSTOM_WITH_SUGGESTIONS_DISABLED:Lcom/android/launcher3/logger/LauncherAtom$ToState;

    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$ToState;->$values()[Lcom/android/launcher3/logger/LauncherAtom$ToState;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/logger/LauncherAtom$ToState;->$VALUES:[Lcom/android/launcher3/logger/LauncherAtom$ToState;

    new-instance v0, Lcom/android/launcher3/logger/LauncherAtom$ToState$1;

    invoke-direct {v0}, Lcom/android/launcher3/logger/LauncherAtom$ToState$1;-><init>()V

    sput-object v0, Lcom/android/launcher3/logger/LauncherAtom$ToState;->internalValueMap:Lt1/m$b;

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

    iput p3, p0, Lcom/android/launcher3/logger/LauncherAtom$ToState;->value:I

    return-void
.end method

.method public static forNumber(I)Lcom/android/launcher3/logger/LauncherAtom$ToState;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    sget-object p0, Lcom/android/launcher3/logger/LauncherAtom$ToState;->TO_CUSTOM_WITH_SUGGESTIONS_DISABLED:Lcom/android/launcher3/logger/LauncherAtom$ToState;

    return-object p0

    :pswitch_1
    sget-object p0, Lcom/android/launcher3/logger/LauncherAtom$ToState;->TO_CUSTOM_WITH_EMPTY_SUGGESTIONS:Lcom/android/launcher3/logger/LauncherAtom$ToState;

    return-object p0

    :pswitch_2
    sget-object p0, Lcom/android/launcher3/logger/LauncherAtom$ToState;->TO_CUSTOM_WITH_VALID_SUGGESTIONS_AND_EMPTY_PRIMARY:Lcom/android/launcher3/logger/LauncherAtom$ToState;

    return-object p0

    :pswitch_3
    sget-object p0, Lcom/android/launcher3/logger/LauncherAtom$ToState;->TO_CUSTOM_WITH_VALID_PRIMARY:Lcom/android/launcher3/logger/LauncherAtom$ToState;

    return-object p0

    :pswitch_4
    sget-object p0, Lcom/android/launcher3/logger/LauncherAtom$ToState;->TO_EMPTY_WITH_SUGGESTIONS_DISABLED:Lcom/android/launcher3/logger/LauncherAtom$ToState;

    return-object p0

    :pswitch_5
    sget-object p0, Lcom/android/launcher3/logger/LauncherAtom$ToState;->TO_EMPTY_WITH_EMPTY_SUGGESTIONS:Lcom/android/launcher3/logger/LauncherAtom$ToState;

    return-object p0

    :pswitch_6
    sget-object p0, Lcom/android/launcher3/logger/LauncherAtom$ToState;->TO_EMPTY_WITH_VALID_SUGGESTIONS_AND_EMPTY_PRIMARY:Lcom/android/launcher3/logger/LauncherAtom$ToState;

    return-object p0

    :pswitch_7
    sget-object p0, Lcom/android/launcher3/logger/LauncherAtom$ToState;->TO_EMPTY_WITH_VALID_PRIMARY:Lcom/android/launcher3/logger/LauncherAtom$ToState;

    return-object p0

    :pswitch_8
    sget-object p0, Lcom/android/launcher3/logger/LauncherAtom$ToState;->TO_SUGGESTION3_WITH_EMPTY_PRIMARY:Lcom/android/launcher3/logger/LauncherAtom$ToState;

    return-object p0

    :pswitch_9
    sget-object p0, Lcom/android/launcher3/logger/LauncherAtom$ToState;->TO_SUGGESTION3_WITH_VALID_PRIMARY:Lcom/android/launcher3/logger/LauncherAtom$ToState;

    return-object p0

    :pswitch_a
    sget-object p0, Lcom/android/launcher3/logger/LauncherAtom$ToState;->TO_SUGGESTION2_WITH_EMPTY_PRIMARY:Lcom/android/launcher3/logger/LauncherAtom$ToState;

    return-object p0

    :pswitch_b
    sget-object p0, Lcom/android/launcher3/logger/LauncherAtom$ToState;->TO_SUGGESTION2_WITH_VALID_PRIMARY:Lcom/android/launcher3/logger/LauncherAtom$ToState;

    return-object p0

    :pswitch_c
    sget-object p0, Lcom/android/launcher3/logger/LauncherAtom$ToState;->TO_SUGGESTION1_WITH_EMPTY_PRIMARY:Lcom/android/launcher3/logger/LauncherAtom$ToState;

    return-object p0

    :pswitch_d
    sget-object p0, Lcom/android/launcher3/logger/LauncherAtom$ToState;->TO_SUGGESTION1_WITH_VALID_PRIMARY:Lcom/android/launcher3/logger/LauncherAtom$ToState;

    return-object p0

    :pswitch_e
    sget-object p0, Lcom/android/launcher3/logger/LauncherAtom$ToState;->TO_SUGGESTION0:Lcom/android/launcher3/logger/LauncherAtom$ToState;

    return-object p0

    :pswitch_f
    sget-object p0, Lcom/android/launcher3/logger/LauncherAtom$ToState;->UNCHANGED:Lcom/android/launcher3/logger/LauncherAtom$ToState;

    return-object p0

    :pswitch_10
    sget-object p0, Lcom/android/launcher3/logger/LauncherAtom$ToState;->TO_STATE_UNSPECIFIED:Lcom/android/launcher3/logger/LauncherAtom$ToState;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_10
        :pswitch_f
        :pswitch_e
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

.method public static valueOf(Ljava/lang/String;)Lcom/android/launcher3/logger/LauncherAtom$ToState;
    .locals 1

    const-class v0, Lcom/android/launcher3/logger/LauncherAtom$ToState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/logger/LauncherAtom$ToState;

    return-object p0
.end method

.method public static values()[Lcom/android/launcher3/logger/LauncherAtom$ToState;
    .locals 1

    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$ToState;->$VALUES:[Lcom/android/launcher3/logger/LauncherAtom$ToState;

    invoke-virtual {v0}, [Lcom/android/launcher3/logger/LauncherAtom$ToState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/launcher3/logger/LauncherAtom$ToState;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 0

    iget p0, p0, Lcom/android/launcher3/logger/LauncherAtom$ToState;->value:I

    return p0
.end method
