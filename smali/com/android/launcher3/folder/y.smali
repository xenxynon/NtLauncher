.class public final synthetic Lcom/android/launcher3/folder/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic a:Lcom/android/launcher3/folder/y;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/launcher3/folder/y;

    invoke-direct {v0}, Lcom/android/launcher3/folder/y;-><init>()V

    sput-object v0, Lcom/android/launcher3/folder/y;->a:Lcom/android/launcher3/folder/y;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-static {p1}, Ljava/util/Objects;->nonNull(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
