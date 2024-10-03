.class public final synthetic Lcom/android/quickstep/util/c0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/util/MainThreadInitializedObject$ObjectProvider;


# static fields
.field public static final synthetic a:Lcom/android/quickstep/util/c0;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/quickstep/util/c0;

    invoke-direct {v0}, Lcom/android/quickstep/util/c0;-><init>()V

    sput-object v0, Lcom/android/quickstep/util/c0;->a:Lcom/android/quickstep/util/c0;

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

    new-instance p0, Lcom/android/quickstep/util/ProtoTracer;

    invoke-direct {p0, p1}, Lcom/android/quickstep/util/ProtoTracer;-><init>(Landroid/content/Context;)V

    return-object p0
.end method
