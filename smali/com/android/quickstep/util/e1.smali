.class public final synthetic Lcom/android/quickstep/util/e1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic a:Lcom/android/quickstep/util/e1;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/quickstep/util/e1;

    invoke-direct {v0}, Lcom/android/quickstep/util/e1;-><init>()V

    sput-object v0, Lcom/android/quickstep/util/e1;->a:Lcom/android/quickstep/util/e1;

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

    check-cast p1, Lcom/android/quickstep/util/GroupTask;

    invoke-static {p1}, Lcom/android/quickstep/util/TaskRemovedDuringLaunchListener;->a(Lcom/android/quickstep/util/GroupTask;)Z

    move-result p0

    return p0
.end method
