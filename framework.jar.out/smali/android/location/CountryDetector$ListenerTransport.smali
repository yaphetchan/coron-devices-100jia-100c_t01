.class final Landroid/location/CountryDetector$ListenerTransport;
.super Landroid/location/ICountryListener$Stub;
.source "CountryDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/CountryDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ListenerTransport"
.end annotation


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private final mListener:Landroid/location/CountryListener;


# direct methods
.method public constructor <init>(Landroid/location/CountryListener;Landroid/os/Looper;)V
    .locals 1
    .parameter "listener"
    .parameter "looper"

    .prologue
    .line 68
    invoke-direct {p0}, Landroid/location/ICountryListener$Stub;-><init>()V

    .line 69
    iput-object p1, p0, Landroid/location/CountryDetector$ListenerTransport;->mListener:Landroid/location/CountryListener;

    .line 70
    if-eqz p2, :cond_0

    .line 71
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/location/CountryDetector$ListenerTransport;->mHandler:Landroid/os/Handler;

    .line 75
    :goto_0
    return-void

    .line 73
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Landroid/location/CountryDetector$ListenerTransport;->mHandler:Landroid/os/Handler;

    goto :goto_0
.end method

.method static synthetic access$000(Landroid/location/CountryDetector$ListenerTransport;)Landroid/location/CountryListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Landroid/location/CountryDetector$ListenerTransport;->mListener:Landroid/location/CountryListener;

    return-object v0
.end method


# virtual methods
.method public onCountryDetected(Landroid/location/Country;)V
    .locals 2
    .parameter "country"

    .prologue
    .line 78
    iget-object v0, p0, Landroid/location/CountryDetector$ListenerTransport;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/location/CountryDetector$ListenerTransport$1;

    invoke-direct {v1, p0, p1}, Landroid/location/CountryDetector$ListenerTransport$1;-><init>(Landroid/location/CountryDetector$ListenerTransport;Landroid/location/Country;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 83
    return-void
.end method
