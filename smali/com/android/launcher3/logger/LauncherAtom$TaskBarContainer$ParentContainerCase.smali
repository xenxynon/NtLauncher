.class public final enum Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$ParentContainerCase;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lt1/m$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ParentContainerCase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$ParentContainerCase;",
        ">;",
        "Lt1/m$a;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$ParentContainerCase;

.field public static final enum PARENTCONTAINER_NOT_SET:Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$ParentContainerCase;

.field public static final enum TASK_SWITCHER_CONTAINER:Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$ParentContainerCase;


# instance fields
.field private final value:I


# direct methods
.method private static synthetic $values()[Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$ParentContainerCase;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$ParentContainerCase;

    sget-object v1, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$ParentContainerCase;->TASK_SWITCHER_CONTAINER:Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$ParentContainerCase;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$ParentContainerCase;->PARENTCONTAINER_NOT_SET:Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$ParentContainerCase;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$ParentContainerCase;

    const-string v1, "TASK_SWITCHER_CONTAINER"

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$ParentContainerCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$ParentContainerCase;->TASK_SWITCHER_CONTAINER:Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$ParentContainerCase;

    new-instance v0, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$ParentContainerCase;

    const-string v1, "PARENTCONTAINER_NOT_SET"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v2}, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$ParentContainerCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$ParentContainerCase;->PARENTCONTAINER_NOT_SET:Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$ParentContainerCase;

    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$ParentContainerCase;->$values()[Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$ParentContainerCase;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$ParentContainerCase;->$VALUES:[Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$ParentContainerCase;

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

    iput p3, p0, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$ParentContainerCase;->value:I

    return-void
.end method

.method public static forNumber(I)Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$ParentContainerCase;
    .locals 1

    if-eqz p0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object p0, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$ParentContainerCase;->TASK_SWITCHER_CONTAINER:Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$ParentContainerCase;

    return-object p0

    :cond_1
    sget-object p0, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$ParentContainerCase;->PARENTCONTAINER_NOT_SET:Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$ParentContainerCase;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$ParentContainerCase;
    .locals 1

    const-class v0, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$ParentContainerCase;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$ParentContainerCase;

    return-object p0
.end method

.method public static values()[Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$ParentContainerCase;
    .locals 1

    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$ParentContainerCase;->$VALUES:[Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$ParentContainerCase;

    invoke-virtual {v0}, [Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$ParentContainerCase;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$ParentContainerCase;

    return-object v0
.end method
