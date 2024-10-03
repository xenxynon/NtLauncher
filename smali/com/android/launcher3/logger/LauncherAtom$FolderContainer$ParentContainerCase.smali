.class public final enum Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$ParentContainerCase;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lt1/m$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ParentContainerCase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$ParentContainerCase;",
        ">;",
        "Lt1/m$a;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$ParentContainerCase;

.field public static final enum HOTSEAT:Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$ParentContainerCase;

.field public static final enum PARENTCONTAINER_NOT_SET:Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$ParentContainerCase;

.field public static final enum TASKBAR:Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$ParentContainerCase;

.field public static final enum WORKSPACE:Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$ParentContainerCase;


# instance fields
.field private final value:I


# direct methods
.method private static synthetic $values()[Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$ParentContainerCase;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$ParentContainerCase;

    sget-object v1, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$ParentContainerCase;->WORKSPACE:Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$ParentContainerCase;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$ParentContainerCase;->HOTSEAT:Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$ParentContainerCase;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$ParentContainerCase;->TASKBAR:Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$ParentContainerCase;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$ParentContainerCase;->PARENTCONTAINER_NOT_SET:Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$ParentContainerCase;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$ParentContainerCase;

    const-string v1, "WORKSPACE"

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-direct {v0, v1, v2, v3}, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$ParentContainerCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$ParentContainerCase;->WORKSPACE:Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$ParentContainerCase;

    new-instance v0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$ParentContainerCase;

    const-string v1, "HOTSEAT"

    const/4 v3, 0x1

    const/4 v4, 0x5

    invoke-direct {v0, v1, v3, v4}, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$ParentContainerCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$ParentContainerCase;->HOTSEAT:Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$ParentContainerCase;

    new-instance v0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$ParentContainerCase;

    const-string v1, "TASKBAR"

    const/4 v3, 0x2

    const/4 v4, 0x6

    invoke-direct {v0, v1, v3, v4}, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$ParentContainerCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$ParentContainerCase;->TASKBAR:Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$ParentContainerCase;

    new-instance v0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$ParentContainerCase;

    const-string v1, "PARENTCONTAINER_NOT_SET"

    const/4 v3, 0x3

    invoke-direct {v0, v1, v3, v2}, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$ParentContainerCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$ParentContainerCase;->PARENTCONTAINER_NOT_SET:Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$ParentContainerCase;

    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$ParentContainerCase;->$values()[Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$ParentContainerCase;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$ParentContainerCase;->$VALUES:[Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$ParentContainerCase;

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

    iput p3, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$ParentContainerCase;->value:I

    return-void
.end method

.method public static forNumber(I)Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$ParentContainerCase;
    .locals 1

    if-eqz p0, :cond_3

    const/4 v0, 0x4

    if-eq p0, v0, :cond_2

    const/4 v0, 0x5

    if-eq p0, v0, :cond_1

    const/4 v0, 0x6

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object p0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$ParentContainerCase;->TASKBAR:Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$ParentContainerCase;

    return-object p0

    :cond_1
    sget-object p0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$ParentContainerCase;->HOTSEAT:Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$ParentContainerCase;

    return-object p0

    :cond_2
    sget-object p0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$ParentContainerCase;->WORKSPACE:Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$ParentContainerCase;

    return-object p0

    :cond_3
    sget-object p0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$ParentContainerCase;->PARENTCONTAINER_NOT_SET:Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$ParentContainerCase;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$ParentContainerCase;
    .locals 1

    const-class v0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$ParentContainerCase;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$ParentContainerCase;

    return-object p0
.end method

.method public static values()[Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$ParentContainerCase;
    .locals 1

    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$ParentContainerCase;->$VALUES:[Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$ParentContainerCase;

    invoke-virtual {v0}, [Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$ParentContainerCase;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$ParentContainerCase;

    return-object v0
.end method


# virtual methods
.method public getNumber()I
    .locals 0

    iget p0, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$ParentContainerCase;->value:I

    return p0
.end method
