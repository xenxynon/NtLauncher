.class public final synthetic Lcom/android/quickstep/r5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/util/MainThreadInitializedObject$ObjectProvider;


# static fields
.field public static final synthetic a:Lcom/android/quickstep/r5;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/quickstep/r5;

    invoke-direct {v0}, Lcom/android/quickstep/r5;-><init>()V

    sput-object v0, Lcom/android/quickstep/r5;->a:Lcom/android/quickstep/r5;

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

    invoke-static {p1}, Lcom/android/quickstep/RecentsModel;->a(Landroid/content/Context;)Lcom/android/quickstep/RecentsModel;

    move-result-object p0

    return-object p0
.end method
