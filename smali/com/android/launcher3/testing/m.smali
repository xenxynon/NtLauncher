.class public final synthetic Lcom/android/launcher3/testing/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic a:Lcom/android/launcher3/testing/m;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/launcher3/testing/m;

    invoke-direct {v0}, Lcom/android/launcher3/testing/m;-><init>()V

    sput-object v0, Lcom/android/launcher3/testing/m;->a:Lcom/android/launcher3/testing/m;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/android/launcher3/Launcher;

    invoke-static {p1}, Lcom/android/launcher3/testing/TestInformationHandler;->p(Lcom/android/launcher3/Launcher;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
