.class public final synthetic Lcom/android/quickstep/g3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic g:Lcom/android/quickstep/g3;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/quickstep/g3;

    invoke-direct {v0}, Lcom/android/quickstep/g3;-><init>()V

    sput-object v0, Lcom/android/quickstep/g3;->g:Lcom/android/quickstep/g3;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {p1}, Lcom/android/quickstep/OverviewComponentObserver;->b(Ljava/lang/Boolean;)V

    return-void
.end method
