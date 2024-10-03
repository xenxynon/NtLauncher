.class public final Lcom/nothing/cardwidget/NTTextClock$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nothing/cardwidget/NTTextClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/i;)V
    .locals 0

    invoke-direct {p0}, Lcom/nothing/cardwidget/NTTextClock$Companion;-><init>()V

    return-void
.end method

.method private final abc(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0

    if-nez p1, :cond_1

    if-nez p2, :cond_0

    move-object p1, p3

    goto :goto_0

    :cond_0
    move-object p1, p2

    :cond_1
    :goto_0
    return-object p1
.end method

.method public static final synthetic access$abc(Lcom/nothing/cardwidget/NTTextClock$Companion;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/nothing/cardwidget/NTTextClock$Companion;->abc(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic getDEFAULT_FORMAT_12_HOUR$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getDEFAULT_FORMAT_24_HOUR$annotations()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final getDEFAULT_FORMAT_12_HOUR()Ljava/lang/CharSequence;
    .locals 0

    invoke-static {}, Lcom/nothing/cardwidget/NTTextClock;->access$getDEFAULT_FORMAT_12_HOUR$cp()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public final getDEFAULT_FORMAT_24_HOUR()Ljava/lang/CharSequence;
    .locals 0

    invoke-static {}, Lcom/nothing/cardwidget/NTTextClock;->access$getDEFAULT_FORMAT_24_HOUR$cp()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method
