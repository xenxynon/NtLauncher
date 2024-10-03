.class public final enum Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple$d;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple$d;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum g:Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple$d;

.field public static final enum h:Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple$d;

.field private static final synthetic i:[Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple$d;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple$d;

    const-string v1, "OVAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple$d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple$d;->g:Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple$d;

    new-instance v0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple$d;

    const-string v1, "ROUNDED_RECT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple$d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple$d;->h:Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple$d;

    invoke-static {}, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple$d;->a()[Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple$d;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple$d;->i:[Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple$d;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private static synthetic a()[Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple$d;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple$d;

    sget-object v1, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple$d;->g:Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple$d;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple$d;->h:Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple$d;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple$d;
    .locals 1

    const-class v0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple$d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple$d;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple$d;
    .locals 1

    sget-object v0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple$d;->i:[Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple$d;

    invoke-virtual {v0}, [Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple$d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple$d;

    return-object v0
.end method
