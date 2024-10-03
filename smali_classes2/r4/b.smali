.class public final enum Lr4/b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lr4/b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum g:Lr4/b;

.field public static final enum h:Lr4/b;

.field private static final synthetic i:[Lr4/b;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lr4/b;

    const-string v1, "APP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lr4/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lr4/b;->g:Lr4/b;

    new-instance v0, Lr4/b;

    const-string v1, "ADD_MORE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lr4/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lr4/b;->h:Lr4/b;

    invoke-static {}, Lr4/b;->a()[Lr4/b;

    move-result-object v0

    sput-object v0, Lr4/b;->i:[Lr4/b;

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

.method private static final synthetic a()[Lr4/b;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lr4/b;

    sget-object v1, Lr4/b;->g:Lr4/b;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lr4/b;->h:Lr4/b;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lr4/b;
    .locals 1

    const-class v0, Lr4/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lr4/b;

    return-object p0
.end method

.method public static values()[Lr4/b;
    .locals 1

    sget-object v0, Lr4/b;->i:[Lr4/b;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lr4/b;

    return-object v0
.end method
