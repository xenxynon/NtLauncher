.class public final enum Lcom/android/searchlauncher/b;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/logging/StatsLogManager$EventEnum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/searchlauncher/b;",
        ">;",
        "Lcom/android/launcher3/logging/StatsLogManager$EventEnum;"
    }
.end annotation


# static fields
.field public static final enum h:Lcom/android/searchlauncher/b;

.field private static final synthetic i:[Lcom/android/searchlauncher/b;


# instance fields
.field private final g:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/android/searchlauncher/b;

    const-string v1, "LAUNCHER_SEARCH_SMARTSPACE_PREFERENCES_TAP_OR_LONGPRESS"

    const/4 v2, 0x0

    const/16 v3, 0x208

    invoke-direct {v0, v1, v2, v3}, Lcom/android/searchlauncher/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/searchlauncher/b;->h:Lcom/android/searchlauncher/b;

    invoke-static {}, Lcom/android/searchlauncher/b;->a()[Lcom/android/searchlauncher/b;

    move-result-object v0

    sput-object v0, Lcom/android/searchlauncher/b;->i:[Lcom/android/searchlauncher/b;

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

    iput p3, p0, Lcom/android/searchlauncher/b;->g:I

    return-void
.end method

.method private static synthetic a()[Lcom/android/searchlauncher/b;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/android/searchlauncher/b;

    sget-object v1, Lcom/android/searchlauncher/b;->h:Lcom/android/searchlauncher/b;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/searchlauncher/b;
    .locals 1

    const-class v0, Lcom/android/searchlauncher/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/searchlauncher/b;

    return-object p0
.end method

.method public static values()[Lcom/android/searchlauncher/b;
    .locals 1

    sget-object v0, Lcom/android/searchlauncher/b;->i:[Lcom/android/searchlauncher/b;

    invoke-virtual {v0}, [Lcom/android/searchlauncher/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/searchlauncher/b;

    return-object v0
.end method


# virtual methods
.method public getId()I
    .locals 0

    iget p0, p0, Lcom/android/searchlauncher/b;->g:I

    return p0
.end method
