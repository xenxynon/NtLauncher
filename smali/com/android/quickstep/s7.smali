.class public final synthetic Lcom/android/quickstep/s7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/util/MainThreadInitializedObject$ObjectProvider;


# static fields
.field public static final synthetic a:Lcom/android/quickstep/s7;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/quickstep/s7;

    invoke-direct {v0}, Lcom/android/quickstep/s7;-><init>()V

    sput-object v0, Lcom/android/quickstep/s7;->a:Lcom/android/quickstep/s7;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get(Landroid/content/Context;)Ljava/lang/Object;
    .locals 0

    invoke-static {p1}, Lcom/android/quickstep/TopTaskTracker;->X(Landroid/content/Context;)Lcom/android/quickstep/TopTaskTracker;

    move-result-object p0

    return-object p0
.end method
