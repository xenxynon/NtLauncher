.class public final enum Lcom/android/launcher3/workspace/WorkspaceSpec$SpecType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/workspace/WorkspaceSpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SpecType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/launcher3/workspace/WorkspaceSpec$SpecType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/launcher3/workspace/WorkspaceSpec$SpecType;

.field public static final enum HEIGHT:Lcom/android/launcher3/workspace/WorkspaceSpec$SpecType;

.field public static final enum WIDTH:Lcom/android/launcher3/workspace/WorkspaceSpec$SpecType;


# direct methods
.method private static final synthetic $values()[Lcom/android/launcher3/workspace/WorkspaceSpec$SpecType;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/launcher3/workspace/WorkspaceSpec$SpecType;

    sget-object v1, Lcom/android/launcher3/workspace/WorkspaceSpec$SpecType;->HEIGHT:Lcom/android/launcher3/workspace/WorkspaceSpec$SpecType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/launcher3/workspace/WorkspaceSpec$SpecType;->WIDTH:Lcom/android/launcher3/workspace/WorkspaceSpec$SpecType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/android/launcher3/workspace/WorkspaceSpec$SpecType;

    const-string v1, "HEIGHT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/workspace/WorkspaceSpec$SpecType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher3/workspace/WorkspaceSpec$SpecType;->HEIGHT:Lcom/android/launcher3/workspace/WorkspaceSpec$SpecType;

    new-instance v0, Lcom/android/launcher3/workspace/WorkspaceSpec$SpecType;

    const-string v1, "WIDTH"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/workspace/WorkspaceSpec$SpecType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher3/workspace/WorkspaceSpec$SpecType;->WIDTH:Lcom/android/launcher3/workspace/WorkspaceSpec$SpecType;

    invoke-static {}, Lcom/android/launcher3/workspace/WorkspaceSpec$SpecType;->$values()[Lcom/android/launcher3/workspace/WorkspaceSpec$SpecType;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/workspace/WorkspaceSpec$SpecType;->$VALUES:[Lcom/android/launcher3/workspace/WorkspaceSpec$SpecType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/launcher3/workspace/WorkspaceSpec$SpecType;
    .locals 1

    const-class v0, Lcom/android/launcher3/workspace/WorkspaceSpec$SpecType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/workspace/WorkspaceSpec$SpecType;

    return-object p0
.end method

.method public static values()[Lcom/android/launcher3/workspace/WorkspaceSpec$SpecType;
    .locals 1

    sget-object v0, Lcom/android/launcher3/workspace/WorkspaceSpec$SpecType;->$VALUES:[Lcom/android/launcher3/workspace/WorkspaceSpec$SpecType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/launcher3/workspace/WorkspaceSpec$SpecType;

    return-object v0
.end method
