.class public final synthetic Lcom/android/quickstep/g6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/util/MainThreadInitializedObject$ObjectProvider;


# static fields
.field public static final synthetic a:Lcom/android/quickstep/g6;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/quickstep/g6;

    invoke-direct {v0}, Lcom/android/quickstep/g6;-><init>()V

    sput-object v0, Lcom/android/quickstep/g6;->a:Lcom/android/quickstep/g6;

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

    new-instance p0, Lcom/android/quickstep/SimpleOrientationTouchTransformer;

    invoke-direct {p0, p1}, Lcom/android/quickstep/SimpleOrientationTouchTransformer;-><init>(Landroid/content/Context;)V

    return-object p0
.end method
